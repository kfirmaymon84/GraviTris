#include "gameEngine.h"
#include <stdint.h>
#include <stdbool.h>
#include "stdlib.h"
#include <string.h>

#include "commonDisplayHandler.h"
#include "displayHandler.h"
#include "drawObjects.h"
#include "ioHandler.h"
#include "gameConfig.h"

// minimal forward declaration for XTime_GetTime (avoid missing include path)
typedef unsigned long long XTime;
extern void XTime_GetTime(XTime *Xtime_Global);

extern s_buttons buttons;

void gameTick();
void initDisplay();
void drawGameBoard(bool isDrawBlocks);
void rotateTable(uint8_t* table, enum rotationEnum rotation);
int Rotate(int px, int py, int r);
bool DoesPieceFit(int nTetromino, int nRotation, int nPosX, int nPosY);

void displayRotationHandler();
bool isGridCompress();
void delLine(uint8_t lineNumber);
void copyLineToLine(uint8_t copyLine, uint8_t toLine);

uint8_t grid[GRID_WIDTH * GRID_HEIGHT] = { 0 };

char lastTetremino[TETROMINO_ARRAY_SIZE] = { 0 };
uint16_t lastPosX = 0;
uint16_t lastPosY = 0;
uint16_t lastRotetion = 0;

char emptyBlock[TETROMINO_ARRAY_SIZE] = { 0 };
bool isGridHasChanged = true;
uint8_t powerUps = 3;
bool isNeedToCompress = false;
int nScore = 0;
int nNextPiece = 0;

// Game State Variables
static GameState gameState = GAME_STATE_START;
static int nCurrentPiece = 0;
static int nCurrentRotation = 0;
static int nCurrentX = 0;
static int nCurrentY = 0;
static int nSpeed = 20;
static int nSpeedCount = 0;
static bool bRotateHold = true;
static int nPieceCount = 0;
static bool bGameOver = false;

// track how long spin button is held; used to trigger reset
static int rotateHoldTicks = 0;
// number of ticks to consider 5 seconds (adjusted by delay)
#define ROTATE_RESET_TICKS (5000 / GAME_TICK_DELAY_MS)

// input movement cooldown: number of game ticks to wait between repeated moves
static int moveCooldown = 0;
// how many ticks between allowed repeated moves (20ms tick -> 3 = ~60ms)
#define MOVE_DELAY_TICKS 3

void drawStartScreen() {
    clearScreen();
    // Centered title: "GraviTris" (9 chars)
    // Scale 3: 9 * 8 * 3 = 216 width. Screen 240. Margin (240-216)/2 = 12.
    drawStringScaled("GraviTris", 12, 50, white, 3);
    
    // Centered prompt: "PRESS ANY KEY" (13 chars)
    // Scale 2: 13 * 8 * 2 = 208 width. Screen 240. Margin (240-208)/2 = 16.
    drawStringScaled("PRESS ANY KEY", 16, 110, green, 2);

    // Centered prompt: "TO START" (8 chars)
    // Scale 2: 8 * 8 * 2 = 128 width. Screen 240. Margin (240-128)/2 = 56.
    drawStringScaled("TO START", 56, 140, green, 2);
    
    // draw three random tetromino previews centred below the start prompt
    {
        const uint8_t startY = 170;           // y coordinate for the top of previews
        const uint8_t tetWidth = 4 * BLOCK_SIZE; // width of one preview
        const uint8_t gap = 10;                // gap between previews
        const uint8_t totalW = 3 * tetWidth + 2 * gap;
        const uint8_t startX = (DISPLAY_WIDTH - totalW) / 2;

        // pick three random pieces each time
        uint8_t p0 = rand() % NUM_TETROMINOS;
        uint8_t p1 = rand() % NUM_TETROMINOS;
        uint8_t p2 = rand() % NUM_TETROMINOS;

        drawTetrominoPreview(p0, startX,                        startY);
        drawTetrominoPreview(p1, startX + tetWidth + gap,       startY);
        drawTetrominoPreview(p2, startX + 2 * (tetWidth + gap), startY);
    }
}

void resetGame() {
    // Reset Game Variables
    gameState = GAME_STATE_PLAYING;
    nScore = 0;
    powerUps = INITIAL_POWERUPS;
    isGridHasChanged = true;
    bGameOver = false;
    
    // Reset Grid
    memset(grid, 0, GRID_WIDTH * GRID_HEIGHT);
    
    // Reset Piece Logic
    nCurrentPiece = 0;
    nCurrentRotation = 0;
    nCurrentX = GRID_WIDTH / 2;
    nCurrentY = 0;
    nSpeed = INITIAL_SPEED;
    nSpeedCount = 0;
    bRotateHold = true;
    nPieceCount = 0;

    // Init display elements
    initDisplay();

    // Pick first pieces
    nNextPiece = rand() % NUM_TETROMINOS;
    nextPiece(nNextPiece, true);
    
    // Setup first current piece
    nCurrentPiece = nNextPiece;
    nNextPiece = rand() % NUM_TETROMINOS;
    nextPiece(nNextPiece, false);
}

/*
 * Function: initGameEngine
 * ----------------------------
 *   Initialize game variables and display.
 *
 *   returns: None
 */
void initGameEngine() {
    // seed random number generator using hardware timer to vary between boots
    {
        XTime t;
        XTime_GetTime(&t);
        srand((unsigned)(t & 0xFFFFFFFF));
    }

    // Create Screen Buffer
    displayInit();
    clrBuff(240, 240);
    
    gameState = GAME_STATE_START_SCREEN;
    drawStartScreen();
}

/*
 * Function: gameTick
 * ----------------------------
 *   Run game logics, run as fest as posible.
 *
 *   returns: None
 */
void gameTick() {

    // Timing =======================
    delay_ms(GAME_TICK_DELAY_MS); // Small Step = 1 Game Tick
    
    // Input ========================
    buttonsTick();

    if (gameState == GAME_STATE_START_SCREEN) {
        if (buttons.isLeftPressed || buttons.isRightPressed || buttons.isDownPressed || buttons.isSpinPressed) {
            resetGame();
            // Wait for release? Or debounce
            delay_ms(200);   
        }
        return;
    }
    
    // Game Over Logic
    if (gameState == GAME_STATE_GAMEOVER) {
        if (buttons.isLeftPressed || buttons.isRightPressed || buttons.isDownPressed || buttons.isSpinPressed) {
            gameState = GAME_STATE_START_SCREEN;
            drawStartScreen();
            delay_ms(500); 
        }
        return;
    }
    
    if (gameState != GAME_STATE_PLAYING) {
        return;
    }

    // Timing =======================
    // (initial delay already applied at start of gameTick)
    nSpeedCount++;
    bool bForceDown = (nSpeedCount == nSpeed);

    // Input ========================
    buttonsTick();
    
    // handle long-press of spin button: if held 5 seconds, go back to start screen
    if (buttons.isSpinPressed) {
        rotateHoldTicks++;
        if (rotateHoldTicks >= ROTATE_RESET_TICKS) {
            rotateHoldTicks = 0;
            gameState = GAME_STATE_START_SCREEN;
            drawStartScreen();
            // skip further game logic this tick
            return;
        }
    } else {
        rotateHoldTicks = 0;
    }

    // Game Logic ===================
    
    // Handle player movement with cooldown to prevent overly fast slide when holding a button
    if (moveCooldown > 0) {
        moveCooldown--;
    } else {
        bool moved = false;
        if (buttons.isRightPressed && DoesPieceFit(nCurrentPiece, nCurrentRotation, nCurrentX + 1, nCurrentY)) {
            nCurrentX++;
            moved = true;
        } else if (buttons.isLeftPressed && DoesPieceFit(nCurrentPiece, nCurrentRotation, nCurrentX - 1, nCurrentY)) {
            nCurrentX--;
            moved = true;
        } else if (buttons.isDownPressed && DoesPieceFit(nCurrentPiece, nCurrentRotation, nCurrentX, nCurrentY + 1)) {
            nCurrentY++;
            moved = true;
        }
        if (moved) {
            moveCooldown = MOVE_DELAY_TICKS;
        }
    }

    // Rotate, but latch to stop wild spinning
    if (buttons.isSpinPressed)
    {
        if ((bRotateHold && DoesPieceFit(nCurrentPiece, nCurrentRotation + 1, nCurrentX, nCurrentY))) {
            nCurrentRotation += 1;
        }
        bRotateHold = false;
    }
    else
        bRotateHold = true;

    // Force the piece down the playfield if it's time
    if (bForceDown)
    {
        displayRotationHandler();//TEST DEBUGGGGGGG
        // Update difficulty every 50 pieces
        nSpeedCount = 0;
        nPieceCount++;
        if (nPieceCount % SPEED_INCREMENT_THRESHOLD == 0)
            if (nSpeed >= MIN_SPEED) nSpeed--;

        // Test if piece can be moved down
        if (DoesPieceFit(nCurrentPiece, nCurrentRotation, nCurrentX, nCurrentY + 1)) {
            nCurrentY++; // It can, so do it!
        }
        else
        {
            // It can't! Lock the piece in place
            for (int px = 0; px < TETROMINO_SIDE; px++)
                for (int py = 0; py < TETROMINO_SIDE; py++)
                    if (tetromino[nCurrentPiece][Rotate(px, py, nCurrentRotation)] != 0) {
                        grid[(nCurrentY + py) * GRID_WIDTH + (nCurrentX + px)] = tetromino[nCurrentPiece][Rotate(px, py, nCurrentRotation)] ;//nCurrentPiece + 1;
                    }
            //Clear last tetremino from temp memory
            //memset(lastTetremino, 0, sizeof(tetromino));
            for (uint16_t i = 0; i < sizeof(lastTetremino); i++)
                lastTetremino[i] = 0;

            isGridHasChanged = true;

            // scan for full lines
            uint16_t linesFound = 0;
            uint16_t lines[GRID_HEIGHT] = { 0 };
            for (uint16_t line = GRID_HEIGHT - 1; line > 0; line--) {
                uint16_t start = line * GRID_WIDTH;
                uint16_t end = start + GRID_WIDTH - 1;

                for (uint16_t idx = start; idx <= end; idx++) {
                    if (grid[idx] == 0) {
                        break;
                    }
                    else if (idx == end) {
                        lines[linesFound++] = line;
                    }
                }
            }

            if (linesFound > 0) {
                uint8_t idx = 0;
                uint8_t copyToLineIdx = lines[idx];

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
                isGridHasChanged = true;
            }

            nScore += SCORE_PER_PIECE;
            //if (!vLines.empty())	nScore += (1 << vLines.size()) * 100;

            // Pick New Piece
            nCurrentX = GRID_WIDTH / 2;
            nCurrentY = 0;
            nCurrentRotation = 0;
            nCurrentPiece = nNextPiece;
            nNextPiece = rand() % NUM_TETROMINOS;
            nextPiece(nNextPiece, false);
            // If piece does not fit straight away, game over!
            bGameOver = !DoesPieceFit(nCurrentPiece, nCurrentRotation, nCurrentX, nCurrentY);
            if(bGameOver) {
                gameState = GAME_STATE_GAMEOVER;
            }
        }
    }

    // Display ======================

    // Grid Drawing Handler
    if (isGridHasChanged) {
        drawGameBoard(true);
        isGridHasChanged = false;
    }

    //Floating game block handler
    if (lastPosX != nCurrentX || lastPosY != nCurrentY || lastRotetion != nCurrentRotation) {

        //Deleat last floating game block
        uint16_t idx = 0;
        for (int px = 0; px < TETROMINO_SIDE; px++) {
            for (int py = 0; py < TETROMINO_SIDE; py++) {
                uint8_t block = lastTetremino[idx++];
                if (block != 0 && block != 0) {
                    clearGameBlock(GRID_POS_X + ((lastPosX + px) * BLOCK_SIZE), //X
                        GRID_POS_Y + ((lastPosY + py) * BLOCK_SIZE));//Y
                }
            }
        }

        //Draw the new Game block
        idx = 0;
        for (int px = 0; px < TETROMINO_SIDE; px++) {
            for (int py = 0; py < TETROMINO_SIDE; py++) {
                uint8_t block = tetromino[nCurrentPiece][Rotate(px, py, nCurrentRotation)];
                if (block != 0) {
                    uint8_t color = block;//((nCurrentPiece + 1) << 4) + (nCurrentPiece + 1);
                    drawGameBlock(GRID_POS_X + ((nCurrentX + px) * BLOCK_SIZE), //X
                        GRID_POS_Y + ((nCurrentY + py) * BLOCK_SIZE),//Y
                        color);//Color
                }
                lastTetremino[idx++] = block;
            }
        }

        // Save last cordinet
        lastPosX = nCurrentX;
        lastPosY = nCurrentY;
        lastRotetion = nCurrentRotation;
    }

    // Draw Score
    drawScore(nScore, false);
}

/*
 * Function: initDisplay
 * ----------------------------
 *   Redraw fresh display:
 * 1. Draw game score with boarder.
 * 2. Draw game boarder without game blocks.
 * 3. Draw powerups boarder with powerups.
 *
 *   returns: None
 */
void initDisplay() {
    clearScreen();
	drawScore(nScore, true);
	drawBorder(GRID_BORDER_POS_X, GRID_BORDER_POS_Y
		, GRID_BORDER_WIDTH, GRID_BORDER_HEIGHT
		, GRID_COLOR1, GRID_COLOR2);
    drawPowerUps(powerUps, true);
}

/*
 * Function: drawGameBoard
 * ----------------------------
 *   Redraw Game board with game blocks:
 * 
 * isDrawBlocks: if true game block will be draw,
 * in false only grid boarder will be draw.
 * 
 *   returns: None
 */
void drawGameBoard(bool isDrawBlocks) {
	drawBorder(GRID_BORDER_POS_X, GRID_BORDER_POS_Y
		, GRID_BORDER_WIDTH, GRID_BORDER_HEIGHT
		, GRID_COLOR1, GRID_COLOR2);

	if (isDrawBlocks) {
		for (int idx = 0; idx < (GRID_WIDTH * GRID_HEIGHT); idx++) {
			if (grid[idx] != 0) {
				//uint8_t color = (grid[idx] << 4) + grid[idx];
                uint8_t color = grid[idx];
				drawGameBlock(GRID_POS_X + ((idx % GRID_WIDTH) * BLOCK_SIZE), //X
					GRID_POS_Y + ((idx / GRID_WIDTH) * BLOCK_SIZE),//Y
					color);//Color
			}
		}
	}
}

/*
 * Function: rotateTable
 * ----------------------------
 *   Redraw Game board with game blocks:
 *
 * table: Pointer to grid.
 * rotation: Rotetion in "ENUM rotationEnum".
 *
 *   returns: None
 */
void rotateTable(uint8_t* table, enum rotationEnum rotation) {
	uint8_t tempTable[GRID_WIDTH * GRID_WIDTH] = { 0 };

	switch (rotation) {
	case rotation_0Deg:
		return;
		break;
	case rotation_90Deg:
		for (uint8_t y = 0; y < GRID_WIDTH; y++) {
			for (uint8_t x = 0; x < GRID_WIDTH; x++) {
				tempTable[(x * GRID_WIDTH) + (GRID_WIDTH - 1 - y)] = table[(y * GRID_WIDTH) + x];
			}
		}
		break;
	case rotation_180Deg:
		for (uint8_t y = 0; y < GRID_WIDTH; y++) {
			for (uint8_t x = 0; x < GRID_WIDTH; x++) {
				tempTable[(GRID_WIDTH - 1 - y) * GRID_WIDTH + GRID_WIDTH - 1 - x] = table[(y * GRID_WIDTH) + x];
			}
		}
		break;
	case rotation_270Deg:
		for (uint8_t y = 0; y < GRID_WIDTH; y++) {
			for (uint8_t x = 0; x < GRID_WIDTH; x++) {
				tempTable[(GRID_WIDTH - 1 - x) * GRID_WIDTH + y] = table[(y * GRID_WIDTH) + x];
			}
		}
		break;
	default:
		break;
	}
	memcpy(table, tempTable, sizeof(tempTable));
}

/*
 * Function: Rotate
 * ----------------------------
 *   Rotate game block:
 *
 * px: position X of game block grid.
 * py: position y of game block grid.
 * r: rotaion
 *
 *   returns: value of x,y potion in grid.
 */
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

/*
 * Function: DoesPieceFit
 * ----------------------------
 *   Test if block fit:
 *
 * nTetromino: Tetromino pice.
 * nRotation: Rotation of tetromino.
 * nPosX: position x of grid.
 * nPosY: position y of grid.
 *
 *   returns: True if fit, false if not.
 */
bool DoesPieceFit(int nTetromino, int nRotation, int nPosX, int nPosY)
{
	// All Field cells >0 are occupied
	for (int px = 0; px < 4; px++)
		for (int py = 0; py < 4; py++)
		{
			// Get index into piece
			int pi = Rotate(px, py, nRotation);

			// Get index into field
			int fi = (nPosY + py) * GRID_WIDTH + (nPosX + px);

			// Test if touch left boarder
			if (tetromino[nTetromino][pi] != 0 && (px + nPosX) < 0)
				return false; // fail on first hit

			// Test if touch right boarder
			if (tetromino[nTetromino][pi] != 0 && (px + nPosX) >= GRID_WIDTH)
				return false; // fail on first hit

			// Test if touch bottom boarder
			if (tetromino[nTetromino][pi] != 0 && (py + nPosY) > 15)
				return false; // fail on first hit

			// Check that test is in bounds. Note out of bounds does
			// not necessarily mean a fail, as the long vertical piece
			// can have cells that lie outside the boundary, so we'll
			// just ignore them
			if (nPosX + px >= 0 && nPosX + px < GRID_WIDTH)
			{
				if (nPosY + py >= 0 && nPosY + py < GRID_HEIGHT)
				{
					// In Bounds so do collision check
					if (tetromino[nTetromino][pi] != 0 && grid[fi] != 0)
						return false; // fail on first hit
				}
			}
		}

	return true;
}

/*
 * Function: displayRotationHandler
 * ----------------------------
 *   Test if display is rotate and draw new display according to rotation.
 *
 *   returns: None.
 */
void displayRotationHandler() {
	const enum rotationEnum orientationMap[4][4] = {
	{rotation_0Deg,rotation_90Deg,rotation_180Deg,rotation_270Deg},
	{rotation_270Deg,rotation_0Deg,rotation_90Deg,rotation_180Deg},
	{rotation_180Deg,rotation_270Deg,rotation_0Deg,rotation_90Deg},
	{rotation_90Deg,rotation_180Deg,rotation_270Deg,rotation_0Deg}
	};

	enum rotationEnum orientation = getDisplayRotetion(); // Get display orientation
	static enum rotationEnum lastOrientation = rotation_0Deg;

	if (lastOrientation != orientation) {

        override_rotateScreen(orientation);

		enum rotationEnum newOrientation = orientationMap[lastOrientation][orientation];
		lastOrientation = newOrientation;

		//Rotate display
        if(powerUps > 0){
            rotateTable(grid, (enum rotationEnum)newOrientation);
            powerUps--;
        }
		
		//Redraw Score
		initDisplay();
        nextPiece(nNextPiece, true);
		//Draw blocks in grid
		for (int idx = 0; idx < (GRID_WIDTH * GRID_HEIGHT); idx++) {
			if (grid[idx] != 0) {
				//uint8_t color = (grid[idx] << 4) + grid[idx];
                uint8_t color = grid[idx];
				drawGameBlock(GRID_POS_X + ((idx % GRID_WIDTH) * BLOCK_SIZE), //X
					GRID_POS_Y + ((idx / GRID_WIDTH) * BLOCK_SIZE),//Y
					color);//Color
			}
		}

		//Compress grig after rotation
		while (isGridCompress()) {
			//Draw border
			drawBorder(GRID_POS_X - BOARD_BORDER_WIDTH, GRID_POS_Y - BOARD_BORDER_WIDTH, //x,y
				GRID_WIDTH * BLOCK_SIZE + (2 * BOARD_BORDER_WIDTH), //Width
				GRID_HEIGHT * BLOCK_SIZE + (2 * BOARD_BORDER_WIDTH),//Height
				white, green);// Colors	

			//Draw blocks in grid
			for (int idx = 0; idx < (GRID_WIDTH * GRID_HEIGHT); idx++) {
				if (grid[idx] != 0) {
					uint8_t color = (grid[idx] << 4) + grid[idx];
					drawGameBlock(GRID_POS_X + ((idx % GRID_WIDTH) * BLOCK_SIZE), //X
						GRID_POS_Y + ((idx / GRID_WIDTH) * BLOCK_SIZE),//Y
						color);//Color
				}
			}
			delay_ms(50);
		}
		lastOrientation = orientation;
	}
}

/*
 * Function: isGridCompress
 * ----------------------------
 *   Test if grid can compress, if yes the grid compress by one line and return true.
 *
 *   returns: True if compress by one line, False if not.
 */
bool isGridCompress() {
	bool isCompressed = false;

	for (uint8_t y = GRID_WIDTH - 1; y != 0; y--) {
		for (uint8_t x = 0; x < GRID_WIDTH; x++) {
			uint16_t testCell = (y * GRID_WIDTH) + x;
			uint16_t aboveCell = ((y - 1) * GRID_WIDTH) + x;
			//If empty cell
			if (grid[testCell] == 0) {
				//If cell above not empty pull it down
				if (grid[aboveCell] != 0) {
					grid[testCell] = grid[aboveCell];
					grid[aboveCell] = 0;
					isCompressed = true;
				}
			}
		}
	}
	return isCompressed;
}

/*
 * Function: delLine
 * ----------------------------
 *   Deleat Line.
 * 
 * lineNumber: Line number to delate.
 *
 *   returns: None.
 */
void delLine(uint8_t lineNumber) {
	uint16_t start = lineNumber * GRID_WIDTH;
	uint16_t end = start + GRID_WIDTH;
	for (int i = start; i < end; i++) {
		grid[i] = 0;
	}
}

/*
 * Function: copyLineToLine
 * ----------------------------
 *   Deleat Line.
 *
 * copyLine: Line number to Copy.
 * toLine: Line number to paste copyLine.
 *
 *   returns: None.
 */
void copyLineToLine(uint8_t copyLine, uint8_t toLine) {
	uint16_t copyFromStart = copyLine * GRID_WIDTH;
	uint16_t copyFromEnd = copyFromStart + GRID_WIDTH;
	uint16_t copyToIdx = toLine * GRID_WIDTH;

	for (int i = copyFromStart; i < copyFromEnd; i++) {
		grid[copyToIdx++] = grid[copyFromStart++];
	}
}