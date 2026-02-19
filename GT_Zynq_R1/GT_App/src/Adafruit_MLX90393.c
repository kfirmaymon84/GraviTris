/******************************************************************************
  This is a library for the MLX90393 magnetometer.

  Designed specifically to work with the MLX90393 breakout from Adafruit:

  ----> https://www.adafruit.com/products/4022

  These sensors use I2C to communicate, 2 pins are required to interface.

  Adafruit invests time and resources providing this open source code, please
  support Adafruit and open-source hardware by purchasing products from
  Adafruit!

  Written by Kevin Townsend/ktown for Adafruit Industries.

  MIT license, all text above must be included in any redistribution
 *****************************************************************************/
#include "Adafruit_MLX90393.h"
#include "xiicps.h"
#include "sleep.h"

extern XIicPs iicPs;

enum mlx90393_gain _gain;
enum mlx90393_resolution _res_x, _res_y, _res_z;
enum mlx90393_filter _dig_filt;
enum mlx90393_oversampling _osr;

int32_t _sensorID = 90393;
int _cspin;
/** Lookup table to convert raw values to uT based on [HALLCONF][GAIN_SEL][RES].
 */
const float mlx90393_lsb_lookup[2][8][4][2] = {

    /* HALLCONF = 0xC (default) */
    {
        /* GAIN_SEL = 0, 5x gain */
        {{0.751, 1.210}, {1.502, 2.420}, {3.004, 4.840}, {6.009, 9.680}},
        /* GAIN_SEL = 1, 4x gain */
        {{0.601, 0.968}, {1.202, 1.936}, {2.403, 3.872}, {4.840, 7.744}},
        /* GAIN_SEL = 2, 3x gain */
        {{0.451, 0.726}, {0.901, 1.452}, {1.803, 2.904}, {3.605, 5.808}},
        /* GAIN_SEL = 3, 2.5x gain */
        {{0.376, 0.605}, {0.751, 1.210}, {1.502, 2.420}, {3.004, 4.840}},
        /* GAIN_SEL = 4, 2x gain */
        {{0.300, 0.484}, {0.601, 0.968}, {1.202, 1.936}, {2.403, 3.872}},
        /* GAIN_SEL = 5, 1.667x gain */
        {{0.250, 0.403}, {0.501, 0.807}, {1.001, 1.613}, {2.003, 3.227}},
        /* GAIN_SEL = 6, 1.333x gain */
        {{0.200, 0.323}, {0.401, 0.645}, {0.801, 1.291}, {1.602, 2.581}},
        /* GAIN_SEL = 7, 1x gain */
        {{0.150, 0.242}, {0.300, 0.484}, {0.601, 0.968}, {1.202, 1.936}},
    },

    /* HALLCONF = 0x0 */
    {
        /* GAIN_SEL = 0, 5x gain */
        {{0.787, 1.267}, {1.573, 2.534}, {3.146, 5.068}, {6.292, 10.137}},
        /* GAIN_SEL = 1, 4x gain */
        {{0.629, 1.014}, {1.258, 2.027}, {2.517, 4.055}, {5.034, 8.109}},
        /* GAIN_SEL = 2, 3x gain */
        {{0.472, 0.760}, {0.944, 1.521}, {1.888, 3.041}, {3.775, 6.082}},
        /* GAIN_SEL = 3, 2.5x gain */
        {{0.393, 0.634}, {0.787, 1.267}, {1.573, 2.534}, {3.146, 5.068}},
        /* GAIN_SEL = 4, 2x gain */
        {{0.315, 0.507}, {0.629, 1.014}, {1.258, 2.027}, {2.517, 4.055}},
        /* GAIN_SEL = 5, 1.667x gain */
        {{0.262, 0.422}, {0.524, 0.845}, {1.049, 1.689}, {2.097, 3.379}},
        /* GAIN_SEL = 6, 1.333x gain */
        {{0.210, 0.338}, {0.419, 0.676}, {0.839, 1.352}, {1.678, 2.703}},
        /* GAIN_SEL = 7, 1x gain */
        {{0.157, 0.253}, {0.315, 0.507}, {0.629, 1.014}, {1.258, 2.027}},
    }};

/** Lookup table for conversion time based on [DIF_FILT][OSR].
 */
const float mlx90393_tconv[8][4] = {
    /* DIG_FILT = 0 */
    {1.27, 1.84, 3.00, 5.30},
    /* DIG_FILT = 1 */
    {1.46, 2.23, 3.76, 6.84},
    /* DIG_FILT = 2 */
    {1.84, 3.00, 5.30, 9.91},
    /* DIG_FILT = 3 */
    {2.61, 4.53, 8.37, 16.05},
    /* DIG_FILT = 4 */
    {4.15, 7.60, 14.52, 28.34},
    /* DIG_FILT = 5 */
    {7.22, 13.75, 26.80, 52.92},
    /* DIG_FILT = 6 */
    {13.36, 26.04, 51.38, 102.07},
    /* DIG_FILT = 7 */
    {25.65, 50.61, 100.53, 200.37},
};
/*!
 *    @brief  Sets up the hardware and initializes I2C
 *    @param  i2c_addr
 *            The I2C address to be used.
 *    @param  wire
 *            The Wire object to be used for I2C connections.
 *    @return True if initialization was successful, otherwise false.
 */
bool MLX90393_begin_I2C() {
	// HAL_StatusTypeDef status;

	// status = HAL_I2C_IsDeviceReady(&hi2c1, MLX90393_DEFAULT_ADDR, 1, 10);

	// if(status != HAL_OK)
	// 	return false;

  return MLX90393__init();
}

bool MLX90393__init(void) {

  if (!MLX90393_exitMode())
    return false;

  if (!MLX90393_reset())
    return false;

  /* Set gain and sensor config. */
  if (!MLX90393_setGain(MLX90393_GAIN_1X)) {
    return false;
  }

  /* Set resolution. */
  if (!MLX90393_setResolution(MLX90393_X, MLX90393_RES_16))
    return false;
  if (!MLX90393_setResolution(MLX90393_Y, MLX90393_RES_16))
    return false;
  if (!MLX90393_setResolution(MLX90393_Z, MLX90393_RES_16))
    return false;

  /* Set oversampling. */
  if (!MLX90393_setOversampling(MLX90393_OSR_3))
    return false;

  /* Set digital filtering. */
  if (!MLX90393_setFilter(MLX90393_FILTER_7))
    return false;

  /* set INT pin to output interrupt */
  if (!MLX90393_setTrigInt(false)) {
    return false;
  }

  return true;
}

/**
 * Perform a mode exit
 * @return True if the operation succeeded, otherwise false.
 */
bool MLX90393_exitMode(void) {
  uint8_t tx[1] = {MLX90393_REG_EX};

  /* Perform the transaction. */
  return (MLX90393_transceive(tx, sizeof(tx), NULL, 0, 0) == MLX90393_STATUS_OK);
}

/**
 * Perform a soft reset
 * @return True if the operation succeeded, otherwise false.
 */
bool MLX90393_reset(void) {
  uint8_t tx[1] = {MLX90393_REG_RT};

  /* Perform the transaction. */
  if (MLX90393_transceive(tx, sizeof(tx), NULL, 0, 5) != MLX90393_STATUS_RESET) {
    return false;
  }
  return true;
}

/**
 * Sets the sensor gain to the specified level.
 * @param gain  The gain level to set.
 * @return True if the operation succeeded, otherwise false.
 */
bool MLX90393_setGain(mlx90393_gain_t gain) {
  _gain = gain;

  uint16_t data;
  MLX90393_readRegister(MLX90393_CONF1, &data);

  // mask off gain bits
  data &= ~0x0070;
  // set gain bits
  data |= gain << MLX90393_GAIN_SHIFT;

  return MLX90393_writeRegister(MLX90393_CONF1, data);
}

/**
 * Gets the current sensor gain.
 *
 * @return An enum containing the current gain level.
 */
mlx90393_gain_t MLX90393_getGain(void) {
  uint16_t data;
  MLX90393_readRegister(MLX90393_CONF1, &data);

  // mask off gain bits
  data &= 0x0070;

  return (mlx90393_gain_t)(data >> 4);
}

/**
 * Sets the sensor resolution to the specified level.
 * @param axis  The axis to set.
 * @param resolution  The resolution level to set.
 * @return True if the operation succeeded, otherwise false.
 */
bool MLX90393_setResolution(enum mlx90393_axis axis,
                                      enum mlx90393_resolution resolution) {

  uint16_t data;
  MLX90393_readRegister(MLX90393_CONF3, &data);

  switch (axis) {
  case MLX90393_X:
    _res_x = resolution;
    data &= ~0x0060;
    data |= resolution << 5;
    break;
  case MLX90393_Y:
    _res_y = resolution;
    data &= ~0x0180;
    data |= resolution << 7;
    break;
  case MLX90393_Z:
    _res_z = resolution;
    data &= ~0x0600;
    data |= resolution << 9;
    break;
  }

  return MLX90393_writeRegister(MLX90393_CONF3, data);
}

/**
 * Gets the current sensor resolution.
 * @param axis  The axis to get.
 * @return An enum containing the current resolution.
 */
enum mlx90393_resolution
MLX90393_getResolution(enum mlx90393_axis axis) {
  switch (axis) {
  case MLX90393_X:
    return _res_x;
  case MLX90393_Y:
    return _res_y;
  case MLX90393_Z:
    return _res_z;
  }
  // shouldn't get here, but to make compiler happy...
  return _res_x;
}

/**
 * Sets the digital filter.
 * @param filter The digital filter setting.
 * @return True if the operation succeeded, otherwise false.
 */
bool MLX90393_setFilter(enum mlx90393_filter filter) {
  _dig_filt = filter;

  uint16_t data;
  MLX90393_readRegister(MLX90393_CONF3, &data);

  data &= ~0x1C;
  data |= filter << 2;

  return MLX90393_writeRegister(MLX90393_CONF3, data);
}

/**
 * Gets the current digital filter setting.
 * @return An enum containing the current digital filter setting.
 */
enum mlx90393_filter MLX90393_getFilter(void) { return _dig_filt; }

/**
 * Sets the oversampling.
 * @param oversampling The oversampling value to use.
 * @return True if the operation succeeded, otherwise false.
 */
bool MLX90393_setOversampling(
    enum mlx90393_oversampling oversampling) {
  _osr = oversampling;

  uint16_t data;
  MLX90393_readRegister(MLX90393_CONF3, &data);

  data &= ~0x03;
  data |= oversampling;

  return MLX90393_writeRegister(MLX90393_CONF3, data);
}

/**
 * Gets the current oversampling setting.
 * @return An enum containing the current oversampling setting.
 */
enum mlx90393_oversampling MLX90393_getOversampling(void) {
  return _osr;
}

/**
 * Sets the TRIG_INT pin to the specified function.
 *
 * @param state  'true/1' sets the pin to INT, 'false/0' to TRIG.
 *
 * @return True if the operation succeeded, otherwise false.
 */
bool MLX90393_setTrigInt(bool state) {
  uint16_t data;
  MLX90393_readRegister(MLX90393_CONF2, &data);

  // mask off trigint bit
  data &= ~0x8000;

  // set trigint bit if desired
  if (state) {
    /* Set the INT, highest bit */
    data |= 0x8000;
  }

  return MLX90393_writeRegister(MLX90393_CONF2, data);
}

/**
 * Begin a single measurement on all axes
 *
 * @return True on command success
 */
bool MLX90393_startSingleMeasurement(void) {
  uint8_t tx[1] = {MLX90393_REG_SM | MLX90393_AXIS_ALL};

  /* Set the device to single measurement mode */
  uint8_t stat = MLX90393_transceive(tx, sizeof(tx), NULL, 0, 0);
  if ((stat == MLX90393_STATUS_OK) || (stat == MLX90393_STATUS_SMMODE)) {
    return true;
  }
  return false;
}

/**
 * Reads data from data register & returns the results.
 *
 * @param x     Pointer to where the 'x' value should be stored.
 * @param y     Pointer to where the 'y' value should be stored.
 * @param z     Pointer to where the 'z' value should be stored.
 *
 * @return True on command success
 */
bool MLX90393_readMeasurement(float *x, float *y, float *z) {
  uint8_t tx[1] = {MLX90393_REG_RM | MLX90393_AXIS_ALL};
  uint8_t rx[6] = {0};

  /* Read a single data sample. */
  if (MLX90393_transceive(tx, sizeof(tx), rx, sizeof(rx), 0) != MLX90393_STATUS_OK) {
    return false;
  }

  int16_t xi, yi, zi;

  /* Convert data to uT and float. */
  xi = (rx[0] << 8) | rx[1];
  yi = (rx[2] << 8) | rx[3];
  zi = (rx[4] << 8) | rx[5];

  if (_res_x == MLX90393_RES_18)
    xi -= 0x8000;
  if (_res_x == MLX90393_RES_19)
    xi -= 0x4000;
  if (_res_y == MLX90393_RES_18)
    yi -= 0x8000;
  if (_res_y == MLX90393_RES_19)
    yi -= 0x4000;
  if (_res_z == MLX90393_RES_18)
    zi -= 0x8000;
  if (_res_z == MLX90393_RES_19)
    zi -= 0x4000;

  *x = (float)xi * mlx90393_lsb_lookup[0][_gain][_res_x][0];
  *y = (float)yi * mlx90393_lsb_lookup[0][_gain][_res_y][0];
  *z = (float)zi * mlx90393_lsb_lookup[0][_gain][_res_z][1];

  return true;
}

/**
 * Performs a single X/Y/Z conversion and returns the results.
 *
 * @param x     Pointer to where the 'x' value should be stored.
 * @param y     Pointer to where the 'y' value should be stored.
 * @param z     Pointer to where the 'z' value should be stored.
 *
 * @return True if the operation succeeded, otherwise false.
 */
bool MLX90393_readData(float *x, float *y, float *z) {
  if (!MLX90393_startSingleMeasurement())
    return false;
  // See MLX90393 Getting Started Guide for fancy formula
  // tconv = f(OSR, DIG_FILT, OSR2, ZYXT)
  // For now, using Table 18 from datasheet
  // Without +10ms delay measurement doesn't always seem to work
  //HAL_Delay(mlx90393_tconv[_dig_filt][_osr] + 10);
  usleep((mlx90393_tconv[_dig_filt][_osr] + 10)*1000);
  return MLX90393_readMeasurement(x, y, z);
}

bool MLX90393_writeRegister(uint8_t reg, uint16_t data) {
  uint8_t tx[4] = {
      MLX90393_REG_WR,
      (uint8_t)(data >> 8),   // high byte
      (uint8_t)(data & 0xFF), // low byte
      (uint8_t)(reg << 2)};   // the register itself, shift up by 2 bits!

  /* Perform the transaction. */
  return (MLX90393_transceive(tx, sizeof(tx), NULL, 0, 0) == MLX90393_STATUS_OK);
}

bool MLX90393_readRegister(uint8_t reg, uint16_t *data) {
  uint8_t tx[2] = {
      MLX90393_REG_RR,
      (uint8_t)(reg << 2)}; // the register itself, shift up by 2 bits!

  uint8_t rx[2];

  /* Perform the transaction. */
  if (MLX90393_transceive(tx, sizeof(tx), rx, sizeof(rx), 0) != MLX90393_STATUS_OK) {
    return false;
  }

  *data = ((uint16_t)rx[0] << 8) | rx[1];

  return true;
}

/**************************************************************************/
/*!
    @brief  Gets the most recent sensor event, Adafruit Unified Sensor format
    @param  event Pointer to an Adafruit Unified sensor_event_t object that
   we'll fill in
    @returns True on successful read
*/
/**************************************************************************/
//bool MLX90393_getEvent(sensors_event_t *event) {
//  /* Clear the event */
//  memset(event, 0, sizeof(sensors_event_t));
//
//  event->version = 1;
//  event->sensor_id = _sensorID;
//  event->type = SENSOR_TYPE_MAGNETIC_FIELD;
//  event->timestamp = millis();
//
//  return readData(&event->magnetic.x, &event->magnetic.y, &event->magnetic.z);
//}

/**
 * Performs a full read/write transaction with the sensor.
 *
 * @param txbuf     Pointer the the buffer containing the data to write.
 * @param txlen     The number of bytes to write.
 * @param rxbuf     Pointer to an appropriately large buffer where data read
 *                  back will be written.
 * @param rxlen     The number of bytes to read back (not including the
 *                  mandatory status byte that is always returned).
 *
 * @return The status byte from the IC.
 */
uint8_t MLX90393_transceive(uint8_t *txbuf, uint8_t txlen,
                                      uint8_t *rxbuf, uint8_t rxlen,
                                      uint8_t interdelay) {
  uint8_t i;
  uint8_t rxbuf2[rxlen + 2];


	/* Write stage */
    //HAL_StatusTypeDef status = HAL_I2C_Master_Transmit(&hi2c1, MLX90393_DEFAULT_ADDR, txbuf, txlen, 10);
    int status = XIicPs_MasterSendPolled(&iicPs, txbuf, txlen, MLX90393_DEFAULT_ADDR);
	if (status != XST_SUCCESS) {
	  return MLX90393_STATUS_ERROR;
	}
	usleep(interdelay*1000);

	/* Read status byte plus any others */
	//status = HAL_I2C_Master_Receive(&hi2c1, MLX90393_DEFAULT_ADDR, rxbuf2, rxlen + 1, 100);
    status = XIicPs_MasterRecvPolled(&iicPs, rxbuf2, rxlen+1, MLX90393_DEFAULT_ADDR);
	if (status != XST_SUCCESS) {
	  return MLX90393_STATUS_ERROR;
	}
	status = rxbuf2[0];
	for (i = 0; i < rxlen; i++) {
	  rxbuf[i] = rxbuf2[i + 1];
	}

  /* Mask out bytes available in the status response. */
  return (status >> 2);
}

/**************************************************************************/
/*!
    @brief  Gets the sensor_t device data, Adafruit Unified Sensor format
    @param  sensor Pointer to an Adafruit Unified sensor_t object that we'll
   fill in
*/
/**************************************************************************/
void MLX90393_getSensor(sensor_t *sensor) {
  /* Clear the sensor_t object */
  memset(sensor, 0, sizeof(sensor_t));

  /* Insert the sensor name in the fixed length char array */
  strncpy(sensor->name, "MLX90393", sizeof(sensor->name) - 1);
  sensor->name[sizeof(sensor->name) - 1] = 0;
  sensor->version = 1;
  sensor->sensor_id = _sensorID;
  sensor->type = 2;//SENSOR_TYPE_MAGNETIC_FIELD;
  sensor->min_delay = 0;
  sensor->min_value = -50000; // -50 gauss in uTesla
  sensor->max_value = 50000;  // +50 gauss in uTesla
  sensor->resolution = 0.15;  // 100/16-bit uTesla per LSB
}
