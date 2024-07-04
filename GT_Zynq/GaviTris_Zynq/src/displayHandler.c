#include "displayHandler.h"
#include "commonDisplayHandler.h"
#include "xgpio.h"
#include "sleep.h"
#include "xparameters.h"
#include "stdbool.h"
#include <stdint.h>
#include "xbram.h"

extern XGpio gpio;
extern uint32_t millisCounter;

bool isOverride = false;

uint8_t *mem8Ptr = XPAR_AXI_BRAM_0_BASEADDRESS;
uint32_t *mem32Ptr = XPAR_AXI_BRAM_0_BASEADDRESS;

    
    // for (uint32_t i = 0; i < 7201*4; i=i+4){
    // 	XBram_WriteReg(XPAR_AXI_BRAM_0_BASEADDRESS,i,i);

    // }

    // int out_data;

    // for (uint32_t i = 0; i < 7201*4; i=i+4){
    // 	out_data = XBram_ReadReg(XPAR_AXI_BRAM_0_BASEADDRESS,i);
	// 	xil_printf("%d: %d\n\r",i, out_data);

void override_setDisplayWindow(uint8_t x, uint8_t y, uint8_t width, uint8_t height);

void takeOverride(){
	// Take override
	gpio_pinSet(&gpio, TFT_DRIVER_OUT_PIN_CH, TFT_DRIVER_OVERRIDE);
    isOverride = true;
}

void releaseOverride(){
	// Release override
	gpio_pinClear(&gpio, TFT_DRIVER_OUT_PIN_CH, TFT_DRIVER_OVERRIDE);
    isOverride = false;
}

void writePort(uint8_t data) {
    //Clear TFT_DRIVER_DATA bits
    gpio_portClearMask(&gpio, TFT_DRIVER_OUT_PIN_CH, (0x000000FF << TFT_DRIVER_DATA));
    //Set TFT_DRIVER_DATA bits as data
    gpio_portSetMask(&gpio, TFT_DRIVER_OUT_PIN_CH, ((uint32_t)data << TFT_DRIVER_DATA));
}

void writeCommand(uint8_t cmd){
    //Clear DC and WRX pins
    gpio_pinClear(&gpio, TFT_DRIVER_OUT_PIN_CH, TFT_DRIVER_DC);
    gpio_pinClear(&gpio, TFT_DRIVER_OUT_PIN_CH, TFT_DRIVER_WRX);

    //Setup port data pins
	writePort(cmd);
    //Set wrx pin
	gpio_pinSet(&gpio, TFT_DRIVER_OUT_PIN_CH, TFT_DRIVER_WRX);
	//Clear wrx pin
	gpio_pinClear(&gpio, TFT_DRIVER_OUT_PIN_CH, TFT_DRIVER_WRX);
}

void writeData(uint8_t data){
    //Set DC pin
    gpio_pinSet(&gpio, TFT_DRIVER_OUT_PIN_CH, TFT_DRIVER_DC);
    //Clear WRX pin
	gpio_pinClear(&gpio, TFT_DRIVER_OUT_PIN_CH, TFT_DRIVER_WRX);

    //Setup port data pins
	writePort(data);
	//Set wrx pin
	gpio_pinSet(&gpio, TFT_DRIVER_OUT_PIN_CH, TFT_DRIVER_WRX);
	//Clear wrx pin
	gpio_pinClear(&gpio, TFT_DRIVER_OUT_PIN_CH, TFT_DRIVER_WRX);
}

void resetDisplay(){
	writeCommand(0x01);
	usleep(5000); //Delay 5 millisec
}

void displayInit(){

    takeOverride();

	resetDisplay();
    usleep(120000); //Delay 120 millisec

  //Set Porch control to default setting.
	writeCommand(0xb2); // Porch Control
	writeData(0x0c);	// BPA[0:6] - Back porch setting in normal mode. The minimum setting is 0x01
	writeData(0x0c);	// FPA[0:6] - Front porch setting in normal mode. The minimum setting is 0x01
	writeData(0x00);	// PSEN - Enable separate porch control
	writeData(0x33);	// BPB[0:3] - Back porch setting in idle mode. The minimum setting is 0x01
	writeData(0x33);	// BPC[0:3] - Back porch setting in partial mode. The minimum setting is 0x01

  //Set Gate control to default setting.
	writeCommand(0xb7); // Gate Control
	writeData(0x35);	// VGHS[2:0] & VGLS[2:0]

  //Set 65K 16bit per pixel setting.
	writeCommand(0x3A); // Interface Pixel Format
	writeData(0x55);	// 65K of RGB interface - 16bit/pixel


	writeCommand(0x36);	// Memory Data Access Control
	writeData(0x00);

	writeCommand(0xbb);	// VCOM Setting
	writeData(0x2A);

	writeCommand(0xc3);	// VRH Set
	writeData(0x0A);

	writeCommand(0xc4);	// VDV Setting
	writeData(0x20);

	writeCommand(0xc6);	// Frame Rate Control in Normal Mode
	writeData(0x0f);

	writeCommand(0xd0);	// Power Control 1
	writeData(0xa4);	// 0xA4 Required
	writeData(0xa2);	// AVDD[1:0], AVCL[1:0], VDS[1:0]

	writeCommand(0xe0);	// Positive Voltage Gamma Control
	//See datasheet for more information
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

	writeCommand(0xe1);	// Negative Voltage Gamma Control
	//See datasheet for more information
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

	//Set the display window to the full size of the display 240x240
	override_setDisplayWindow( 0x0000, 0x0000, 0x00EF, 0x00EF);

	exitSleep();
    releaseOverride();
}

void override_setDisplayWindow(uint8_t x, uint8_t y, uint8_t width, uint8_t height){
	uint8_t x0 = x;
	uint8_t x1 = x + width - 1;
	uint8_t y0 = y;
	uint8_t y1 = y + height -1;

	mem32Ptr[0] = (width << 8) + height;

	writeCommand(0x2a);	// Column Address Set
	writeData(x0>>8);	// X address start:
	writeData(x0);		// 0 <= XS <= X
	writeData(x1>>8);	// X address end:
	writeData(x1);		// S <= XE <= X

	writeCommand(0x2b);	// Row Address Set
	writeData(y0>>8);	// Y address start:
	writeData(y0);		// 0 <= YS <= Y
	writeData(y1>>8);	// Y address start:
	writeData(y1);		// S <= YE <= Y

}

void setDisplayWindow(uint8_t x, uint8_t y, uint8_t width, uint8_t height){
    uint32_t data = x << 24 | y << 16 | (width << 8) | height;
    XBram_WriteReg(XPAR_AXI_BRAM_0_BASEADDRESS,0,data);
}

void enterSleep(){
	writeCommand(0x28);	// Display Off
	
    usleep(20000); //delay 20 millisec
	writeCommand(0x10);	// Sleep In (Low power mode)
}

void exitSleep (){
	writeCommand(0x11); // Exit Sleep Mode
    usleep(120000); //Delay 120 millisec
	writeCommand(0x29); // Display on

	writeCommand(0x2c); // Memory write
	// When this command is accepted, the column register and the page
	// register are reset to the start column/start page positions.
}

void override_clearScreen(){
	unsigned int i,j;
    takeOverride();
	//Set the display window to the full size of the display 240x240
	override_setDisplayWindow( 0, 0, 240, 240);

	exitSleep();
	for(i=0;i<240;i++)
	{
		for(j=0;j<240;j++)
		{
			writeColor(BLACK);
		}
	}
    releaseOverride();
}

void override_8bar(){
	uint16_t colors[8]={WHITE, YELLOW, TEAL, GREEN, FUCHSIA, RED, BLUE, BLACK};
    takeOverride();
	//Set the display window to the full size of the display 240x240
	override_setDisplayWindow( 0x0000, 0x0000, 240, 240);

	exitSleep ();
	int h=0, w=0;
	for(h=0;h<240;h++){
		for(w=0;w<240;w++){
			uint16_t color = colors[w/30];
			writeColor(color);
		}
	}
    releaseOverride();
}

void writeColor(unsigned long color){
	// MUST be in override mode
  	uint8_t data = color >> 8;
  	writeData(data);
  	data = color;
  	writeData(data);
}

//To Test
void writeByteToMemory(uint16_t address, uint8_t data){
	mem8Ptr[address] = data;
}

void write32ToMemory(uint16_t address, uint32_t data){
    
	mem32Ptr[address] = data;
}

void writePixel(uint16_t pixelNumber, uint8_t color) {
    //Get buffer u32 index
    uint16_t idx1 = 1 + (pixelNumber / 8);
    //Get 8 pixels from buffer
    //uint32_t pixels = mem32Ptr[idx1];
    //Get byte index in u32
    uint8_t byteIdx = 3 - ((pixelNumber % 8) / 2);

    uint8_t *pixelsPtr = (uint8_t*)&mem32Ptr[idx1];

    uint8_t pixel = pixelsPtr[byteIdx];
    if (pixelNumber % 2 == 0)
        pixel = (pixel & 0x0F) + (color<<4);
    else
        pixel = (pixel & 0xF0) + color;

    pixelsPtr[byteIdx] = pixel;
}

void drawMemory(){
    gpio_pinSet(&gpio, TFT_DRIVER_OUT_PIN_CH,TFT_DRIVER_START);
	gpio_pinClear(&gpio, TFT_DRIVER_OUT_PIN_CH,TFT_DRIVER_START);
}

void clearScreen(){
    clrBuff(240, 240);
    setDisplayWindow(0, 0, 240, 240);
    drawMemory();    
}
void clrBuff(uint8_t width, uint8_t height){
    uint16_t size = (width * height) / 8; 
    if(size > 7201)
        size = 7201;

    for(int i =0;i<size;i++){
        mem32Ptr[i] = 0;
    }
	
}
