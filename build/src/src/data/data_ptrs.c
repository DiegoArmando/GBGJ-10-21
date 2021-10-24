#pragma bank 5
#include "data_ptrs.h"
#include "banks.h"

#ifdef __EMSCRIPTEN__
const unsigned int bank_data_ptrs[] = {
0,0,0,0,0,0,&bank_6_data,&bank_7_data
};
#endif

const BankPtr tileset_bank_ptrs[] = {
{0x06,0x1904},{0x06,0x20B5}
};

const BankPtr background_bank_ptrs[] = {
{0x06,0x2C16},{0x06,0x2D81},{0x06,0x2EEC},{0x06,0x3057},{0x06,0x31C2}
};

const BankPtr background_attr_bank_ptrs[] = {
{0x07,0x0168},{0x07,0x02D0},{0x07,0x0438},{0x07,0x05A0},{0x07,0x0708},{0x07,0x0870},{0x07,0x09D8}
};

const BankPtr palette_bank_ptrs[] = {
{0x06,0x2BC6},{0x06,0x2BCE},{0x06,0x2BD6},{0x06,0x2C06},{0x06,0x2C06}
};

const BankPtr sprite_bank_ptrs[] = {
{0x06,0x332D},{0x06,0x33AE},{0x06,0x342F},{0x06,0x34B0},{0x06,0x3531},{0x06,0x35B2},{0x06,0x3633},{0x06,0x36B4}
};

const BankPtr scene_bank_ptrs[] = {
{0x07,0x0B40},{0x06,0x3FE5},{0x07,0x0B6E},{0x07,0x0C18},{0x07,0x0C2E},{0x07,0x0CE4},{0x07,0x0CFA}
};

const BankPtr collision_bank_ptrs[] = {
{0x06,0x3775},{0x06,0x38DD},{0x06,0x3A45},{0x06,0x3BAD},{0x06,0x3D15},{0x06,0x3E7D},{0x07,0x0000}
};

const BankPtr avatar_bank_ptrs[] = {
{0x00,0x0000}
};

const unsigned int music_tracks[] = {
0, 0
};

const unsigned char music_banks[] = {
0, 0
};

unsigned int start_scene_index = 0x0000;
int start_scene_x = 0x0048;
int start_scene_y = 0x0058;

char start_scene_dir_x = 0;
char start_scene_dir_y = 1;
unsigned int start_player_sprite = 0;
unsigned char start_player_move_speed = 1;
unsigned char start_player_anim_speed = 255;
WORD plat_min_vel = 304;
WORD plat_walk_vel = 6400;
WORD plat_run_vel = 10496;
WORD plat_walk_acc = 152;
WORD plat_run_acc = 228;
WORD plat_dec = 208;
WORD plat_jump_vel = 16384;
WORD plat_grav = 1792;
WORD plat_hold_grav = 512;
WORD plat_max_fall_vel = 20000;
UBYTE topdown_grid = 8;
UBYTE fade_style;
UBYTE *engine_fields_addr = &plat_min_vel;

unsigned char script_variables[500] = { 0 };
