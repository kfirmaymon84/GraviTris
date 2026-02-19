#ifndef _GAME_ENGINE_HANDLER_H_
#define _GAME_ENGINE_HANDLER_H_

typedef enum {
    GAME_STATE_START_SCREEN,
    GAME_STATE_START,
    GAME_STATE_PLAYING,
    GAME_STATE_GAMEOVER
} GameState;

void initGameEngine();
void gameTick();

#endif
