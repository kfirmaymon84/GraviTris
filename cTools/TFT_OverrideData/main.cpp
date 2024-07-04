#include <iostream>
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>


int main()
{
    FILE* destFile = fopen("OverrideMap.txt", "wb");
	const int maxBytes = 240*240*2;
	for(int i =0;i<maxBytes;i++){
		uint16_t data = rand() & 0x01FF;
		
		fprintf(destFile, "%03x\n",data);
	}

    fclose(destFile);
	return 1;
}
