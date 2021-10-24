;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.4 #11952 (MINGW64)
;--------------------------------------------------------
	.module data_ptrs
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _music_banks
	.globl _music_tracks
	.globl _avatar_bank_ptrs
	.globl _collision_bank_ptrs
	.globl _scene_bank_ptrs
	.globl _sprite_bank_ptrs
	.globl _palette_bank_ptrs
	.globl _background_attr_bank_ptrs
	.globl _background_bank_ptrs
	.globl _tileset_bank_ptrs
	.globl _script_variables
	.globl _engine_fields_addr
	.globl _fade_style
	.globl _topdown_grid
	.globl _plat_max_fall_vel
	.globl _plat_hold_grav
	.globl _plat_grav
	.globl _plat_jump_vel
	.globl _plat_dec
	.globl _plat_run_acc
	.globl _plat_walk_acc
	.globl _plat_run_vel
	.globl _plat_walk_vel
	.globl _plat_min_vel
	.globl _start_player_anim_speed
	.globl _start_player_move_speed
	.globl _start_player_sprite
	.globl _start_scene_dir_y
	.globl _start_scene_dir_x
	.globl _start_scene_y
	.globl _start_scene_x
	.globl _start_scene_index
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_start_scene_index::
	.ds 2
_start_scene_x::
	.ds 2
_start_scene_y::
	.ds 2
_start_scene_dir_x::
	.ds 1
_start_scene_dir_y::
	.ds 1
_start_player_sprite::
	.ds 2
_start_player_move_speed::
	.ds 1
_start_player_anim_speed::
	.ds 1
_plat_min_vel::
	.ds 2
_plat_walk_vel::
	.ds 2
_plat_run_vel::
	.ds 2
_plat_walk_acc::
	.ds 2
_plat_run_acc::
	.ds 2
_plat_dec::
	.ds 2
_plat_jump_vel::
	.ds 2
_plat_grav::
	.ds 2
_plat_hold_grav::
	.ds 2
_plat_max_fall_vel::
	.ds 2
_topdown_grid::
	.ds 1
_fade_style::
	.ds 1
_engine_fields_addr::
	.ds 2
_script_variables::
	.ds 500
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;C:/Users/Matte/AppData/Local/Temp/_gbsbuild/src/data/data_ptrs.c:51: unsigned int start_scene_index = 0x0000;
	ld	hl, #_start_scene_index
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x00
;C:/Users/Matte/AppData/Local/Temp/_gbsbuild/src/data/data_ptrs.c:52: int start_scene_x = 0x0048;
	ld	hl, #_start_scene_x
	ld	(hl), #0x48
	inc	hl
	ld	(hl), #0x00
;C:/Users/Matte/AppData/Local/Temp/_gbsbuild/src/data/data_ptrs.c:53: int start_scene_y = 0x0058;
	ld	hl, #_start_scene_y
	ld	(hl), #0x58
	inc	hl
	ld	(hl), #0x00
;C:/Users/Matte/AppData/Local/Temp/_gbsbuild/src/data/data_ptrs.c:55: char start_scene_dir_x = 0;
	ld	hl, #_start_scene_dir_x
	ld	(hl), #0x00
;C:/Users/Matte/AppData/Local/Temp/_gbsbuild/src/data/data_ptrs.c:56: char start_scene_dir_y = 1;
	ld	hl, #_start_scene_dir_y
	ld	(hl), #0x01
;C:/Users/Matte/AppData/Local/Temp/_gbsbuild/src/data/data_ptrs.c:57: unsigned int start_player_sprite = 0;
	ld	hl, #_start_player_sprite
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x00
;C:/Users/Matte/AppData/Local/Temp/_gbsbuild/src/data/data_ptrs.c:58: unsigned char start_player_move_speed = 1;
	ld	hl, #_start_player_move_speed
	ld	(hl), #0x01
;C:/Users/Matte/AppData/Local/Temp/_gbsbuild/src/data/data_ptrs.c:59: unsigned char start_player_anim_speed = 255;
	ld	hl, #_start_player_anim_speed
	ld	(hl), #0xff
;C:/Users/Matte/AppData/Local/Temp/_gbsbuild/src/data/data_ptrs.c:60: WORD plat_min_vel = 304;
	ld	hl, #_plat_min_vel
	ld	(hl), #0x30
	inc	hl
	ld	(hl), #0x01
;C:/Users/Matte/AppData/Local/Temp/_gbsbuild/src/data/data_ptrs.c:61: WORD plat_walk_vel = 6400;
	ld	hl, #_plat_walk_vel
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x19
;C:/Users/Matte/AppData/Local/Temp/_gbsbuild/src/data/data_ptrs.c:62: WORD plat_run_vel = 10496;
	ld	hl, #_plat_run_vel
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x29
;C:/Users/Matte/AppData/Local/Temp/_gbsbuild/src/data/data_ptrs.c:63: WORD plat_walk_acc = 152;
	ld	hl, #_plat_walk_acc
	ld	(hl), #0x98
	inc	hl
	ld	(hl), #0x00
;C:/Users/Matte/AppData/Local/Temp/_gbsbuild/src/data/data_ptrs.c:64: WORD plat_run_acc = 228;
	ld	hl, #_plat_run_acc
	ld	(hl), #0xe4
	inc	hl
	ld	(hl), #0x00
;C:/Users/Matte/AppData/Local/Temp/_gbsbuild/src/data/data_ptrs.c:65: WORD plat_dec = 208;
	ld	hl, #_plat_dec
	ld	(hl), #0xd0
	inc	hl
	ld	(hl), #0x00
;C:/Users/Matte/AppData/Local/Temp/_gbsbuild/src/data/data_ptrs.c:66: WORD plat_jump_vel = 16384;
	ld	hl, #_plat_jump_vel
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x40
;C:/Users/Matte/AppData/Local/Temp/_gbsbuild/src/data/data_ptrs.c:67: WORD plat_grav = 1792;
	ld	hl, #_plat_grav
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x07
;C:/Users/Matte/AppData/Local/Temp/_gbsbuild/src/data/data_ptrs.c:68: WORD plat_hold_grav = 512;
	ld	hl, #_plat_hold_grav
	ld	(hl), #0x00
	inc	hl
	ld	(hl), #0x02
;C:/Users/Matte/AppData/Local/Temp/_gbsbuild/src/data/data_ptrs.c:69: WORD plat_max_fall_vel = 20000;
	ld	hl, #_plat_max_fall_vel
	ld	(hl), #0x20
	inc	hl
	ld	(hl), #0x4e
;C:/Users/Matte/AppData/Local/Temp/_gbsbuild/src/data/data_ptrs.c:70: UBYTE topdown_grid = 8;
	ld	hl, #_topdown_grid
	ld	(hl), #0x08
;C:/Users/Matte/AppData/Local/Temp/_gbsbuild/src/data/data_ptrs.c:72: UBYTE *engine_fields_addr = &plat_min_vel;
	ld	hl, #_engine_fields_addr
	ld	(hl), #<(_plat_min_vel)
	inc	hl
	ld	(hl), #>(_plat_min_vel)
;C:/Users/Matte/AppData/Local/Temp/_gbsbuild/src/data/data_ptrs.c:74: unsigned char script_variables[500] = { 0 };
	ld	hl, #_script_variables
	ld	(hl), #0x00
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE_5
	.area _CODE_5
_tileset_bank_ptrs:
	.db #0x06	; 6
	.dw #0x1904
	.db #0x06	; 6
	.dw #0x20b5
_background_bank_ptrs:
	.db #0x06	; 6
	.dw #0x2c16
	.db #0x06	; 6
	.dw #0x2d81
	.db #0x06	; 6
	.dw #0x2eec
	.db #0x06	; 6
	.dw #0x3057
	.db #0x06	; 6
	.dw #0x31c2
_background_attr_bank_ptrs:
	.db #0x07	; 7
	.dw #0x0168
	.db #0x07	; 7
	.dw #0x02d0
	.db #0x07	; 7
	.dw #0x0438
	.db #0x07	; 7
	.dw #0x05a0
	.db #0x07	; 7
	.dw #0x0708
	.db #0x07	; 7
	.dw #0x0870
	.db #0x07	; 7
	.dw #0x09d8
_palette_bank_ptrs:
	.db #0x06	; 6
	.dw #0x2bc6
	.db #0x06	; 6
	.dw #0x2bce
	.db #0x06	; 6
	.dw #0x2bd6
	.db #0x06	; 6
	.dw #0x2c06
	.db #0x06	; 6
	.dw #0x2c06
_sprite_bank_ptrs:
	.db #0x06	; 6
	.dw #0x332d
	.db #0x06	; 6
	.dw #0x33ae
	.db #0x06	; 6
	.dw #0x342f
	.db #0x06	; 6
	.dw #0x34b0
	.db #0x06	; 6
	.dw #0x3531
	.db #0x06	; 6
	.dw #0x35b2
	.db #0x06	; 6
	.dw #0x3633
	.db #0x06	; 6
	.dw #0x36b4
_scene_bank_ptrs:
	.db #0x07	; 7
	.dw #0x0b40
	.db #0x06	; 6
	.dw #0x3fe5
	.db #0x07	; 7
	.dw #0x0b6e
	.db #0x07	; 7
	.dw #0x0c18
	.db #0x07	; 7
	.dw #0x0c2e
	.db #0x07	; 7
	.dw #0x0ce4
	.db #0x07	; 7
	.dw #0x0cfa
_collision_bank_ptrs:
	.db #0x06	; 6
	.dw #0x3775
	.db #0x06	; 6
	.dw #0x38dd
	.db #0x06	; 6
	.dw #0x3a45
	.db #0x06	; 6
	.dw #0x3bad
	.db #0x06	; 6
	.dw #0x3d15
	.db #0x06	; 6
	.dw #0x3e7d
	.db #0x07	; 7
	.dw #0x0000
_avatar_bank_ptrs:
	.db #0x00	; 0
	.dw #0x0000
_music_tracks:
	.dw #0x0000
	.dw #0x0000
_music_banks:
	.db #0x00	; 0
	.db #0x00	; 0
	.area _CABS (ABS)
