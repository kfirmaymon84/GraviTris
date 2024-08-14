#include "displayHandler.h"
#include "commonDisplayHandler.h"
#include "sleep.h"
#include "stdbool.h"
#include "xbram.h"
#include "xgpio.h"
#include "xparameters.h"
#include <stdint.h>
#include <xil_printf.h>

extern XGpio gpio;

bool isOverride = false;

void override_setDisplayWindow(uint8_t x, uint8_t y, uint8_t width,
                               uint8_t height);

/** @brief Take override on TFT display pins.
 *  @return Void.
 */
void takeOverride() {
  // Take override
  gpio_pinSet(&gpio, TFT_DRIVER_OUT_PIN_CH, TFT_DRIVER_OVERRIDE);
  isOverride = true;
}

/** @brief Release override on TFT display pins.
 *  @return Void.
 */
void releaseOverride() {
  // Release override
  gpio_pinClear(&gpio, TFT_DRIVER_OUT_PIN_CH, TFT_DRIVER_OVERRIDE);
  isOverride = false;
}

/** @brief Write TFT display data pins (D0 - D7).
 *  @param data Data pin value.
 *  @return Void.
 */
void writePort(uint8_t data) {
  // Clear TFT_DRIVER_DATA bits
  gpio_portClearMask(&gpio, TFT_DRIVER_OUT_PIN_CH,
                     (0x000000FF << TFT_DRIVER_DATA));
  // Set TFT_DRIVER_DATA bits as data
  gpio_portSetMask(&gpio, TFT_DRIVER_OUT_PIN_CH,
                   ((uint32_t)data << TFT_DRIVER_DATA));
}

/** @brief Write command to TFT driver.
 *  Write data pin with cmd value, set DC pin in command mode,
 *  do WRX clock.
 *
 *  @param cmd Data pin value.
 *  @return Void.
 */
void writeCommand(uint8_t cmd) {
  // Clear DC and WRX pins
  gpio_pinClear(&gpio, TFT_DRIVER_OUT_PIN_CH, TFT_DRIVER_DC);
  gpio_pinClear(&gpio, TFT_DRIVER_OUT_PIN_CH, TFT_DRIVER_WRX);

  // Setup port data pins
  writePort(cmd);
  // Set wrx pin
  gpio_pinSet(&gpio, TFT_DRIVER_OUT_PIN_CH, TFT_DRIVER_WRX);
  // Clear wrx pin
  gpio_pinClear(&gpio, TFT_DRIVER_OUT_PIN_CH, TFT_DRIVER_WRX);
}

/** @brief Write data to TFT driver.
 *  Write data pin with cmd value, set DC pin in data mode,
 *  do WRX clock.
 *
 *  @param cmd Data pin value.
 *  @return Void.
 */
void writeData(uint8_t data) {
  // Set DC pin
  gpio_pinSet(&gpio, TFT_DRIVER_OUT_PIN_CH, TFT_DRIVER_DC);
  // Clear WRX pin
  gpio_pinClear(&gpio, TFT_DRIVER_OUT_PIN_CH, TFT_DRIVER_WRX);

  // Setup port data pins
  writePort(data);
  // Set wrx pin
  gpio_pinSet(&gpio, TFT_DRIVER_OUT_PIN_CH, TFT_DRIVER_WRX);
  // Clear wrx pin
  gpio_pinClear(&gpio, TFT_DRIVER_OUT_PIN_CH, TFT_DRIVER_WRX);
}

/** @brief Reset Display Driver.
 *
 *  @return Void.
 */
void resetDisplay() {
  writeCommand(0x01);
  usleep(5000); // Delay 5 millisec
}

/** @brief Initial Display Driver.
 *
 *  @return Void.
 */
void displayInit() {

  takeOverride();

  resetDisplay();
  usleep(120000); // Delay 120 millisec

  // Set Porch control to default setting.
  writeCommand(0xb2); // Porch Control
  writeData(0x0c); // BPA[0:6] - Back porch setting in normal mode. The minimum
                   // setting is 0x01
  writeData(0x0c); // FPA[0:6] - Front porch setting in normal mode. The minimum
                   // setting is 0x01
  writeData(0x00); // PSEN - Enable separate porch control
  writeData(0x33); // BPB[0:3] - Back porch setting in idle mode. The minimum
                   // setting is 0x01
  writeData(0x33); // BPC[0:3] - Back porch setting in partial mode. The minimum
                   // setting is 0x01

  // Set Gate control to default setting.
  writeCommand(0xb7); // Gate Control
  writeData(0x35);    // VGHS[2:0] & VGLS[2:0]

  // Set 65K 16bit per pixel setting.
  writeCommand(0x3A); // Interface Pixel Format
  writeData(0x55);    // 65K of RGB interface - 16bit/pixel

  writeCommand(0x36); // Memory Data Access Control
  writeData(0x00);

  writeCommand(0xbb); // VCOM Setting
  writeData(0x2A);

  writeCommand(0xc3); // VRH Set
  writeData(0x0A);

  writeCommand(0xc4); // VDV Setting
  writeData(0x20);

  writeCommand(0xc6); // Frame Rate Control in Normal Mode
  writeData(0x0f);

  writeCommand(0xd0); // Power Control 1
  writeData(0xa4);    // 0xA4 Required
  writeData(0xa2);    // AVDD[1:0], AVCL[1:0], VDS[1:0]

  writeCommand(0xe0); // Positive Voltage Gamma Control
  // See datasheet for more information
  writeData(0xd0);
  writeData(0x00);
  writeData(0x02);
  writeData(0x07);
  writeData(0x0a);
  writeData(0x28);
  writeData(0x32);
  writeData(0x44);
  writeData(0x42);
  writeData(0x06);
  writeData(0x0e);
  writeData(0x12);
  writeData(0x14);
  writeData(0x17);

  writeCommand(0xe1); // Negative Voltage Gamma Control
  // See datasheet for more information
  writeData(0xd0);
  writeData(0x00);
  writeData(0x02);
  writeData(0x07);
  writeData(0x0a);
  writeData(0x28);
  writeData(0x31);
  writeData(0x54);
  writeData(0x47);
  writeData(0x0e);
  writeData(0x1c);
  writeData(0x17);
  writeData(0x1b);
  writeData(0x1e);

  writeCommand(0x21); // Color inversion (FFFF -> white , 0000 -> BLACK)

  // Set the display window to the full size of the display 240x240
  override_setDisplayWindow(0x0000, 0x0000, 0x00EF, 0x00EF);

  exitSleep();
  releaseOverride();
}

/** @brief Display driver set to sleep mode.
 *
 *  @return Void.
 */
void enterSleep() {
  writeCommand(0x28); // Display Off

  usleep(20000);      // delay 20 millisec
  writeCommand(0x10); // Sleep In (Low power mode)
}

/** @brief Display driver exit to sleep mode.
 *
 *  @return Void.
 */
void exitSleep() {
  writeCommand(0x11); // Exit Sleep Mode
  usleep(120000);     // Delay 120 millisec
  writeCommand(0x29); // Display on

  writeCommand(0x2c); // Memory write
  // When this command is accepted, the column register and the page
  // register are reset to the start column/start page positions.
}

/** @brief Set display window in override mode.
 *
 *  @param x Window x position.
 *  @param y Window position.
 *  @param width Window width.
 *  @param height Window height.
 *
 *  @return Void.
 */
void override_setDisplayWindow(uint8_t x, uint8_t y, uint8_t width,
                               uint8_t height) {
  uint8_t x0 = x;
  uint8_t x1 = x + width - 1;
  uint8_t y0 = y;
  uint8_t y1 = y + height - 1;

  uint32_t data = (width << 8) + height;
  XBram_WriteReg(XPAR_AXI_BRAM_0_BASEADDRESS, 0, data);

  writeCommand(0x2a); // Column Address Set
  writeData(x0 >> 8); // X address start:
  writeData(x0);      // 0 <= XS <= X
  writeData(x1 >> 8); // X address end:
  writeData(x1);      // S <= XE <= X

  writeCommand(0x2b); // Row Address Set
  writeData(y0 >> 8); // Y address start:
  writeData(y0);      // 0 <= YS <= Y
  writeData(y1 >> 8); // Y address start:
  writeData(y1);      // S <= YE <= Y
}

/** @brief Clear display screen in override mode.
 *
 *  @return Void.
 */
void override_clearScreen() {
  unsigned int i, j;
  takeOverride();
  // Set the display window to the full size of the display 240x240
  override_setDisplayWindow(0, 0, 240, 240);

  exitSleep();
  for (i = 0; i < 240; i++) {
    for (j = 0; j < 240; j++) {
      override_writeColor(BLACK);
    }
  }
  releaseOverride();
}

/** @brief Draw 8 bars test image in override mode.
 *
 *  @return Void.
 */
void override_8bar() {
  uint16_t colors[8] = {WHITE, YELLOW, TEAL, GREEN, FUCHSIA, RED, BLUE, BLACK};
  takeOverride();
  // Set the display window to the full size of the display 240x240
  override_setDisplayWindow(0x0000, 0x0000, 240, 240);

  exitSleep();
  int h = 0, w = 0;
  for (h = 0; h < 240; h++) {
    for (w = 0; w < 240; w++) {
      uint16_t color = colors[w / 30];
      override_writeColor(color);
    }
  }
  releaseOverride();
}

/** @brief send color 16 bit (RGB565) to display driver in override mode.
 *
 *  @return Void.
 */
void override_writeColor(unsigned long color) {
  // MUST be in override mode
  uint8_t data = color >> 8;
  writeData(data);
  data = color;
  writeData(data);
}

/** @brief Rotate disply.
 *
 *  @param orientation orientation of Display (enum displayOrientation).
 *
 *  @return Void.
 */
void override_rotateScreen(enum rotationEnum orientation) {
  uint8_t data = 0;
  uint8_t offset = 0;
  takeOverride();
  switch (orientation) {
  case rotation_0Deg:
    break;
  case rotation_90Deg:
    //data = 3;
    data = 5;
    offset = 0x50;
    break;
  case rotation_180Deg:
    data = 6;
    offset = 0x50;
    break;
  case rotation_270Deg:
    data = 3;
    // data = 5;
    // offset = 0x50;
    break;
  default:
    releaseOverride();
    return;
  }

  writeCommand(0x36);
  writeData(data << 5);
  writeCommand(0x37);
  writeData(0);
  writeData(offset);
  releaseOverride();
}

/** @brief Set display window.
 *
 *  @param x Window x position.
 *  @param y Window position.
 *  @param width Window width.
 *  @param height Window height.
 *
 *  @return Void.
 */
void setDisplayWindow(uint8_t x, uint8_t y, uint8_t width, uint8_t height) {
  uint32_t data = x << 24 | y << 16 | (width << 8) | height;
  XBram_WriteReg(XPAR_AXI_BRAM_0_BASEADDRESS, 0, data);
}

/** @brief Write 32 bit data to BRAM.
 *
 *  @param offset Offset address from base address.
 *
 *  @return Void.
 */
void write32ToMemory(uint16_t offset, uint32_t data) {
  uint16_t idx = offset * 4; // Every 4 idx is a new 32 bit
  XBram_WriteReg(XPAR_AXI_BRAM_CTRL_0_BASEADDR, idx, data);
}

/** @brief Write pixel data to BRAM.
 *
 *  @param pixelNumber pixel number.
 *  @param color pixel color.
 *
 *  @return Void.
 */
void writePixel(uint16_t pixelNumber, uint8_t color) {
  // Only except color only 0 to F
  color %= 0x10;

  // Get 8 pixels index
  uint16_t idx1 = (1 + (pixelNumber / 8)) * 4;

  // Get 8 pixels from BRAM
  uint32_t pixels = XBram_ReadReg(XPAR_AXI_BRAM_CTRL_0_BASEADDR, idx1);

  // Get byte index in u32
  uint8_t pixelIdx = pixelNumber % 8;

  uint8_t shiftBy = 28 - (pixelIdx * 4);
  // Del pixel from buff
  pixels &= ~(0xf << shiftBy);
  // Write pixel into buffer
  pixels |= color << shiftBy;

  // Write buffer to BRAM
  XBram_WriteReg(XPAR_AXI_BRAM_CTRL_0_BASEADDR, idx1, pixels);
}

/** @brief Draw memory (do a start pulse to the RTL module).
 *
 *  @return Void.
 */
void drawMemory() {
#define WAIT_FOR_GPIO_US 10
  // Wait for READY
  //uint32_t read = 0;

  // Wait for ready to be HIGH
  while ((gpio_portRead(&gpio, PORTB_CH) & (0x1 << TFT_DRIVER_READY)) != 1) {
    usleep(WAIT_FOR_GPIO_US);
  }
  gpio_pinSet(&gpio, TFT_DRIVER_OUT_PIN_CH, TFT_DRIVER_START);
  gpio_pinClear(&gpio, TFT_DRIVER_OUT_PIN_CH, TFT_DRIVER_START);
  // Wait for ready to be LOW
  while ((gpio_portRead(&gpio, PORTB_CH) & (0x1 << TFT_DRIVER_READY)) != 0) {
    usleep(WAIT_FOR_GPIO_US);
  }

  // Wait for ready to be HIGH
  while ((gpio_portRead(&gpio, PORTB_CH) & (0x1 << TFT_DRIVER_READY)) != 1) {
    usleep(WAIT_FOR_GPIO_US);
  }
}

/** @brief Clear display screen.
 * Clear memory buffer, set full display window and send start pulse to RTL
 * module.
 *
 *  @return Void.
 */
void clearScreen() {
  clrBuff(240, 240);
  setDisplayWindow(0, 0, 240, 240);
  drawMemory();
}

/** @brief Clear 240*240 pixels data.
 *
 *  @return Void.
 */
void clrBuff(uint8_t width, uint8_t height) {
  uint16_t size = (width * height) / 8;
  if (size > 7200)
    size = 7200;

  for (int i = 0; i < size + 10; i++) {
    XBram_WriteReg(XPAR_AXI_BRAM_CTRL_0_BASEADDR, i * 4, 0);
  }
}
