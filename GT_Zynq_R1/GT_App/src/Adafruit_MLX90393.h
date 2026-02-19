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
#ifndef ADAFRUIT_MLX90393_H
#define ADAFRUIT_MLX90393_H

#include "stdbool.h"
#include "stdint.h"

#define MLX90393_DEFAULT_ADDR (0x0C) /* Can also be 0x18, depending on IC */

#define MLX90393_AXIS_ALL (0x0E)      /**< X+Y+Z axis bits for commands. */
#define MLX90393_CONF1 (0x00)         /**< Gain */
#define MLX90393_CONF2 (0x01)         /**< Burst, comm mode */
#define MLX90393_CONF3 (0x02)         /**< Oversampling, filter, res. */
#define MLX90393_CONF4 (0x03)         /**< Sensitivty drift. */
#define MLX90393_GAIN_SHIFT (4)       /**< Left-shift for gain bits. */
#define MLX90393_HALL_CONF (0x0C)     /**< Hall plate spinning rate adj. */
#define MLX90393_STATUS_OK (0x00)     /**< OK value for status response. */
#define MLX90393_STATUS_SMMODE (0x08) /**< SM Mode status response. */
#define MLX90393_STATUS_RESET (0x01)  /**< Reset value for status response. */
#define MLX90393_STATUS_ERROR (0xFF)  /**< OK value for status response. */
#define MLX90393_STATUS_MASK (0xFC)   /**< Mask for status OK checks. */

/** Register map. */
enum {
  MLX90393_REG_SB = (0x10),  /**< Start burst mode. */
  MLX90393_REG_SW = (0x20),  /**< Start wakeup on change mode. */
  MLX90393_REG_SM = (0x30),  /**> Start single-meas mode. */
  MLX90393_REG_RM = (0x40),  /**> Read measurement. */
  MLX90393_REG_RR = (0x50),  /**< Read register. */
  MLX90393_REG_WR = (0x60),  /**< Write register. */
  MLX90393_REG_EX = (0x80),  /**> Exit moode. */
  MLX90393_REG_HR = (0xD0),  /**< Memory recall. */
  MLX90393_REG_HS = (0x70),  /**< Memory store. */
  MLX90393_REG_RT = (0xF0),  /**< Reset. */
  MLX90393_REG_NOP = (0x00), /**< NOP. */
};

/** Gain settings for CONF1 register. */
typedef enum mlx90393_gain {
  MLX90393_GAIN_5X = (0x00),
  MLX90393_GAIN_4X,
  MLX90393_GAIN_3X,
  MLX90393_GAIN_2_5X,
  MLX90393_GAIN_2X,
  MLX90393_GAIN_1_67X,
  MLX90393_GAIN_1_33X,
  MLX90393_GAIN_1X
} mlx90393_gain_t;

/** Resolution settings for CONF3 register. */
typedef enum mlx90393_resolution {
  MLX90393_RES_16,
  MLX90393_RES_17,
  MLX90393_RES_18,
  MLX90393_RES_19,
} mlx90393_resolution_t;

/** Axis designator. */
typedef enum mlx90393_axis {
  MLX90393_X,
  MLX90393_Y,
  MLX90393_Z
} mlx90393_axis_t;

/** Digital filter settings for CONF3 register. */
typedef enum mlx90393_filter {
  MLX90393_FILTER_0,
  MLX90393_FILTER_1,
  MLX90393_FILTER_2,
  MLX90393_FILTER_3,
  MLX90393_FILTER_4,
  MLX90393_FILTER_5,
  MLX90393_FILTER_6,
  MLX90393_FILTER_7,
} mlx90393_filter_t;

/** Oversampling settings for CONF3 register. */
typedef enum mlx90393_oversampling {
  MLX90393_OSR_0,
  MLX90393_OSR_1,
  MLX90393_OSR_2,
  MLX90393_OSR_3,
} mlx90393_oversampling_t;





/* Sensor details (40 bytes) */
/** struct sensor_s is used to describe basic information about a specific
 * sensor. */
typedef struct {
  char name[12];     /**< sensor name */
  int32_t version;   /**< version of the hardware + driver */
  int32_t sensor_id; /**< unique sensor identifier */
  int32_t type;      /**< this sensor's type (ex. SENSOR_TYPE_LIGHT) */
  float max_value;   /**< maximum value of this sensor's value in SI units */
  float min_value;   /**< minimum value of this sensor's value in SI units */
  float resolution; /**< smallest difference between two values reported by this
                       sensor */
  int32_t min_delay; /**< min delay in microseconds between events. zero = not a
                        constant rate */
} sensor_t;

  bool MLX90393_begin_I2C();

  bool MLX90393_reset(void);
  bool MLX90393_exitMode(void);

  bool MLX90393_readMeasurement(float *x, float *y, float *z);
  bool MLX90393_startSingleMeasurement(void);

  bool MLX90393_setGain(enum mlx90393_gain gain);
  enum MLX90393_mlx90393_gain getGain(void);

  bool MLX90393_setResolution(enum mlx90393_axis, enum mlx90393_resolution resolution);
  enum MLX90393_mlx90393_resolution getResolution(enum mlx90393_axis);

  bool MLX90393_setFilter(enum mlx90393_filter filter);
  enum MLX90393_mlx90393_filter getFilter(void);

  bool MLX90393_setOversampling(enum mlx90393_oversampling oversampling);
  enum MLX90393_mlx90393_oversampling getOversampling(void);

  bool MLX90393_setTrigInt(bool state);
  bool MLX90393_readData(float *x, float *y, float *z);

//  bool MLX90393_getEvent(sensors_event_t *event);
//  void MLX90393_getSensor(sensor_t *sensor);

  bool MLX90393_readRegister(uint8_t reg, uint16_t *data);
  bool MLX90393_writeRegister(uint8_t reg, uint16_t data);
  bool MLX90393__init(void);
  uint8_t MLX90393_transceive(uint8_t *txbuf, uint8_t txlen, uint8_t *rxbuf,
                     uint8_t rxlen, uint8_t interdelay);

#endif /* ADAFRUIT_MLX90393_H */
