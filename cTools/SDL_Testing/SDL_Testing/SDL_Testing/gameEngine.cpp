#include "gameEngine.h"
#include <stdint.h>
#include <stdbool.h>
#include <iostream>
#include <time.h>
#include <Windows.h>
using namespace std;

#include "commonDisplayHandler.h"
#include "displayHandler.h"
#include "drawObjects.h"

void delLine(uint8_t lineNumber);
void copyLineToLine(uint8_t copyLine, uint8_t toLine);

const uint8_t fieldPosX = 41, fieldPosY = 41;
const uint8_t borderWidth = 3;
const uint8_t blockSize = 10;

const uint16_t nScreenWidth = 120, nScreenHeight = 30;
const uint8_t fieldWidth = 16, fieldHeight = 16;
uint8_t field[fieldWidth * fieldHeight] = { 0 }; 

void delay_ms(uint32_t timeout) {
	timeout += std::clock();
	while (std::clock() < timeout) continue;
}

char tetromino[7][17] = { // Tetronimos 4x4
	"..I...I...I...I.",//I
	"..T..TT...T.....",//T
	".....OO..OO.....",//O
	"..Z..ZZ..Z......",//Z
	".S...SS...S.....",//S
	".L...L...LL.....",//L
	"..J...J..JJ....."//J
};

int Rotate(int px, int py, int r)
{
	int pi = 0;
	switch (r % 4)
	{
	case 0: // 0 degrees			// 0  1  2  3
		pi = py * 4 + px;			// 4  5  6  7
		break;						// 8  9 10 11
		//12 13 14 15

	case 1: // 90 degrees			//12  8  4  0
		pi = 12 + py - (px * 4);	//13  9  5  1
		break;						//14 10  6  2
		//15 11  7  3

	case 2: // 180 degrees			//15 14 13 12
		pi = 15 - (py * 4) - px;	//11 10  9  8
		break;						// 7  6  5  4
		// 3  2  1  0

	case 3: // 270 degrees			// 3  7 11 15
		pi = 3 - py + (px * 4);		// 2  6 10 14
		break;						// 1  5  9 13
	}								// 0  4  8 12

	return pi;
}

bool DoesPieceFit(int nTetromino, int nRotation, int nPosX, int nPosY)
{
	// All Field cells >0 are occupied
	for (int px = 0; px < 4; px++)
		for (int py = 0; py < 4; py++)
		{
			// Get index into piece
			int pi = Rotate(px, py, nRotation);

			// Get index into field
			int fi = (nPosY + py) * fieldWidth + (nPosX + px);

			// Test if touch left boarder
			if (tetromino[nTetromino][pi] != L'.' && (px+ nPosX) < 0)
				return false; // fail on first hit

			// Test if touch right boarder
			if (tetromino[nTetromino][pi] != L'.' && (px + nPosX) >= fieldWidth)
				return false; // fail on first hit

			// Test if touch bottom boarder
			if (tetromino[nTetromino][pi] != L'.' && (py + nPosY) > 15)
				return false; // fail on first hit

			// Check that test is in bounds. Note out of bounds does
			// not necessarily mean a fail, as the long vertical piece
			// can have cells that lie outside the boundary, so we'll
			// just ignore them
			if (nPosX + px >= 0 && nPosX + px < fieldWidth)
			{
				if (nPosY + py >= 0 && nPosY + py < fieldHeight)
				{
					// In Bounds so do collision check
					if (tetromino[nTetromino][pi] != L'.' && field[fi] != 0)
						return false; // fail on first hit
				}
			}
		}

	return true;
}

void gameTick() {

	// Create Screen Buffer
	displayInit();
	clrBuff(240,240);

	// Game Logic
	bool bKey[4];
	int nCurrentPiece = 0;
	int nCurrentRotation = 0;
	int nCurrentX = fieldWidth / 2;
	int nCurrentY = 0;
	int nSpeed = 20;
	int nSpeedCount = 0;
	bool bForceDown = false;
	bool bRotateHold = true;
	int nPieceCount = 0;
	int nScore = 0;
	bool bGameOver = false;

	while (!bGameOver) // Main Loop
	{
		// Timing =======================
		delay_ms(50); // Small Step = 1 Game Tick
		nSpeedCount++;
		bForceDown = (nSpeedCount == nSpeed);

		// Input ========================
		for (int k = 0; k < 4; k++)								// R   L   D Z
			bKey[k] = (0x8000 & GetAsyncKeyState((unsigned char)("\x27\x25\x28Z"[k]))) != 0;

		// Game Logic ===================

		// Handle player movement
		nCurrentX += (bKey[0] && DoesPieceFit(nCurrentPiece, nCurrentRotation, nCurrentX + 1, nCurrentY)) ? 1 : 0;
		nCurrentX -= (bKey[1] && DoesPieceFit(nCurrentPiece, nCurrentRotation, nCurrentX - 1, nCurrentY)) ? 1 : 0;
		nCurrentY += (bKey[2] && DoesPieceFit(nCurrentPiece, nCurrentRotation, nCurrentX, nCurrentY + 1)) ? 1 : 0;

		// Rotate, but latch to stop wild spinning
		if (bKey[3])
		{
			nCurrentRotation += (bRotateHold && DoesPieceFit(nCurrentPiece, nCurrentRotation + 1, nCurrentX, nCurrentY)) ? 1 : 0;
			bRotateHold = false;
		}
		else
			bRotateHold = true;

		// Force the piece down the playfield if it's time
		if (bForceDown)
		{
			// Update difficulty every 50 pieces
			nSpeedCount = 0;
			nPieceCount++;
			if (nPieceCount % 50 == 0)
				if (nSpeed >= 10) nSpeed--;

			// Test if piece can be moved down
			if (DoesPieceFit(nCurrentPiece, nCurrentRotation, nCurrentX, nCurrentY + 1))
				nCurrentY++; // It can, so do it!
			else
			{
				// It can't! Lock the piece in place
				for (int px = 0; px < 4; px++)
					for (int py = 0; py < 4; py++)
						if (tetromino[nCurrentPiece][Rotate(px, py, nCurrentRotation)] != L'.')
							field[(nCurrentY + py) * fieldWidth + (nCurrentX + px)] = nCurrentPiece + 1;

				// scan for full lines
				uint16_t linesFound = 0;
				uint16_t lines[fieldHeight] = { 0 };
				for (uint16_t line = fieldHeight-1; line > 0; line--) {
					uint16_t start = line* fieldWidth;
					uint16_t end = start + fieldWidth - 1;

					for (uint16_t idx = start; idx < end; idx++) {
						if (field[idx] == 0) {
							break;
						}
						else if (idx == end-1) {
							lines[linesFound++] = line;
						}
					}
				}
				
				if (linesFound > 0) {
					uint8_t idx = 0;
					uint8_t copyToLineIdx = lines[idx];
					uint8_t lastCopyLineIdx = lines[idx];

					//deleat Lines
					for (int line = lines[idx]; line >= 0; line--) {
						if (line == lines[idx]) {
							delLine(line);
							idx++;
						}
						else {
							copyLineToLine(line, copyToLineIdx);
							delLine(line);
							copyToLineIdx--;
						}
					}

				}


				nScore += 25;
				//if (!vLines.empty())	nScore += (1 << vLines.size()) * 100;

				// Pick New Piece
				nCurrentX = fieldWidth / 2;
				nCurrentY = 0;
				nCurrentRotation = 0;
				nCurrentPiece = rand() % 7;

				// If piece does not fit straight away, game over!
				bGameOver = !DoesPieceFit(nCurrentPiece, nCurrentRotation, nCurrentX, nCurrentY);
			}
		}

		// Display ======================
		
		// Draw Field
		drawBorder(fieldPosX - borderWidth, fieldPosY - borderWidth, //x,y
			fieldWidth*blockSize + (2*borderWidth), //Width
			fieldHeight*blockSize + (2*borderWidth),//Height
			white, green);// Colors

		//Draw gameBlocks
		uint16_t idx = 0;
		for (int h = 0; h < fieldHeight; h++)
			for (int w = 0; w < fieldWidth; w++) {
				if (field[idx] != 0) {
					//Draw field Block
					drawGameBlock(fieldPosX + (w * blockSize), fieldPosY + (h * blockSize) , yellow);
				}
				idx++;
			}
				
		// Draw Current Piece
		for (int px = 0; px < 4; px++) {
			for (int py = 0; py < 4; py++) {
				uint8_t block = tetromino[nCurrentPiece][Rotate(px, py, nCurrentRotation)];
				if (block != L'.')
					drawGameBlock(fieldPosX + ((nCurrentX + px) * blockSize), //X
						fieldPosY + ((nCurrentY + py) * blockSize),//Y
						yellow);//Color
			}
		}

				
		// Draw Score
		//swprintf_s(&screen[2 * nScreenWidth + nFieldWidth + 6], 16, L"SCORE: %8d", nScore);

		//// Animate Line Completion
		//if (!vLines.empty())
		//{
		//	// Display Frame (cheekily to draw lines)
		//	WriteConsoleOutputCharacter(hConsole, screen, nScreenWidth * nScreenHeight, { 0,0 }, &dwBytesWritten);
		//	this_thread::sleep_for(400ms); // Delay a bit

		//	for (auto& v : vLines)
		//		for (int px = 1; px < nFieldWidth - 1; px++)
		//		{
		//			for (int py = v; py > 0; py--)
		//				pField[py * nFieldWidth + px] = pField[(py - 1) * nFieldWidth + px];
		//			pField[px] = 0;
		//		}

		//	vLines.clear();
		//}

		// Display Frame
		//WriteConsoleOutputCharacter(hConsole, screen, nScreenWidth * nScreenHeight, { 0,0 }, &dwBytesWritten);
	}

	// Oh Dear
	//CloseHandle(hConsole);
	std::cout << "Game Over!! Score:" << nScore << endl;
	system("pause");
}

void delLine(uint8_t lineNumber) {
	uint16_t start = lineNumber * fieldWidth;
	uint16_t end = start + fieldWidth;
	for (int i = start; i < end; i++) {
		field[i] = 0;
	}
}

void copyLineToLine(uint8_t copyLine, uint8_t toLine) {
	uint16_t copyFromStart = copyLine * fieldWidth;
	uint16_t copyFromEnd = copyFromStart + fieldWidth;
	uint16_t copyToIdx = toLine * fieldWidth;

	for (int i = copyFromStart; i < copyFromEnd; i++) {
		field[copyToIdx++] = field[copyFromStart++];
	}
}