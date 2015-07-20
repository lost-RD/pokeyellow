MAX_LEVEL EQU 100
NUM_MOVES EQU 4

PARTY_LENGTH EQU 6

MONS_PER_BOX EQU 20
NUM_BOXES    EQU 12

HOF_MON       EQU $10
HOF_TEAM      EQU PARTY_LENGTH * HOF_MON
HOF_TEAM_CAPACITY EQU 50

A_BUTTON EQU %00000001
B_BUTTON EQU %00000010
SELECT   EQU %00000100
START    EQU %00001000
D_RIGHT  EQU %00010000
D_LEFT   EQU %00100000
D_UP     EQU %01000000
D_DOWN   EQU %10000000

PIXELS_PER_TILE EQU 8

SCREEN_WIDTH  EQU 20
SCREEN_HEIGHT EQU 18

SCREEN_WIDTH_PIXELS  EQU SCREEN_WIDTH * PIXELS_PER_TILE
SCREEN_HEIGHT_PIXELS EQU SCREEN_HEIGHT * PIXELS_PER_TILE

NPC_MOVEMENT_DOWN  EQU $00
NPC_MOVEMENT_UP    EQU $40
NPC_MOVEMENT_LEFT  EQU $80
NPC_MOVEMENT_RIGHT EQU $C0

; text box IDs
MESSAGE_BOX                       EQU $01
FIELD_MOVE_MON_MENU               EQU $04
JP_MOCHIMONO_MENU_TEMPLATE        EQU $05
USE_TOSS_MENU_TEMPLATE            EQU $06
JP_SAVE_MESSAGE_MENU_TEMPLATE     EQU $08
JP_SPEED_OPTIONS_MENU_TEMPLATE    EQU $09
BATTLE_MENU_TEMPLATE              EQU $0b
SWITCH_STATS_CANCEL_MENU_TEMPLATE EQU $0c
LIST_MENU_BOX                     EQU $0d
BUY_SELL_QUIT_MENU_TEMPLATE       EQU $0e
MONEY_BOX_TEMPLATE                EQU $0f
MON_SPRITE_POPUP                  EQU $11
JP_AH_MENU_TEMPLATE               EQU $12
MONEY_BOX                         EQU $13
TWO_OPTION_MENU                   EQU $14
BUY_SELL_QUIT_MENU                EQU $15
JP_POKEDEX_MENU_TEMPLATE          EQU $1a
SAFARI_BATTLE_MENU_TEMPLATE       EQU $1b

; two option menu constants
YES_NO_MENU       EQU 0
NORTH_WEST_MENU   EQU 1
SOUTH_EAST_MENU   EQU 2
WIDE_YES_NO_MENU  EQU 3
NORTH_EAST_MENU   EQU 4
TRADE_CANCEL_MENU EQU 5
HEAL_CANCEL_MENU  EQU 6
NO_YES_MENU       EQU 7

; menu exit method constants for list menus and the buy/sell/quit menu
CHOSE_MENU_ITEM   EQU 1 ; pressed A
CANCELLED_MENU    EQU 2 ; pressed B

; menu exit method constants for two-option menus
CHOSE_FIRST_ITEM  EQU 1
CHOSE_SECOND_ITEM EQU 2

; move mon constants
BOX_TO_PARTY     EQU 0
PARTY_TO_BOX     EQU 1
DAYCARE_TO_PARTY EQU 2
PARTY_TO_DAYCARE EQU 3

; emotion bubbles
EXCLAMATION_BUBBLE EQU 0
QUESTION_BUBBLE    EQU 1
SMILE_BUBBLE       EQU 2

; slot symbols
SLOTS7		EQU $0200
SLOTSBAR	EQU $0604
SLOTSCHERRY	EQU $0A08
SLOTSFISH	EQU $0E0C
SLOTSBIRD	EQU $1210
SLOTSMOUSE	EQU $1614

; party menu types
NORMAL_PARTY_MENU    EQU 0
USE_ITEM_PARTY_MENU  EQU 1
BATTLE_PARTY_MENU    EQU 2
TMHM_PARTY_MENU      EQU 3
SWAP_MONS_PARTY_MENU EQU 4
EVO_STONE_PARTY_MENU EQU 5

; party memu message IDs
ANTIDOTE_MSG     EQU $F0
BURN_HEAL_MSG    EQU $F1
ICE_HEAL_MSG     EQU $F2
AWAKENING_MSG    EQU $F3
PARALYZ_HEAL_MSG EQU $F4
POTION_MSG       EQU $F5
FULL_HEAL_MSG    EQU $F6
REVIVE_MSG       EQU $F7
RARE_CANDY_MSG   EQU $F8

; naming screen types
NAME_PLAYER_SCREEN EQU 0
NAME_RIVAL_SCREEN  EQU 1
NAME_MON_SCREEN    EQU 2

; mon data locations
; Note that some values are not supported by all functions that use these values.
PLAYER_PARTY_DATA EQU 0
ENEMY_PARTY_DATA  EQU 1
BOX_DATA          EQU 2
DAYCARE_DATA      EQU 3
BATTLE_MON_DATA   EQU 4

; player direction constants

PLAYER_DIR_BIT_RIGHT EQU 0
PLAYER_DIR_BIT_LEFT  EQU 1
PLAYER_DIR_BIT_DOWN  EQU 2
PLAYER_DIR_BIT_UP    EQU 3

PLAYER_DIR_RIGHT EQU (1 << PLAYER_DIR_BIT_RIGHT)
PLAYER_DIR_LEFT  EQU (1 << PLAYER_DIR_BIT_LEFT)
PLAYER_DIR_DOWN  EQU (1 << PLAYER_DIR_BIT_DOWN)
PLAYER_DIR_UP    EQU (1 << PLAYER_DIR_BIT_UP)

; serial

ESTABLISH_CONNECTION_WITH_INTERNAL_CLOCK EQU $01
ESTABLISH_CONNECTION_WITH_EXTERNAL_CLOCK EQU $02

USING_EXTERNAL_CLOCK       EQU $01
USING_INTERNAL_CLOCK       EQU $02
CONNECTION_NOT_ESTABLISHED EQU $ff

; signals the start of an array of bytes transferred over the link cable
SERIAL_PREAMBLE_BYTE EQU $FD

; this byte is used when there is no data to send
SERIAL_NO_DATA_BYTE EQU $FE

; signals the end of one part of a patch list (there are two parts) for player/enemy party data
SERIAL_PATCH_LIST_PART_TERMINATOR EQU $FF

LINK_STATE_NONE          EQU $00 ; not using link
LINK_STATE_IN_CABLE_CLUB EQU $01 ; in a cable club room (Colosseum or Trade Centre)
LINK_STATE_START_TRADE   EQU $02 ; pre-trade selection screen initialisation
LINK_STATE_START_BATTLE  EQU $03 ; pre-battle initialisation
LINK_STATE_BATTLING      EQU $04 ; in a link battle
LINK_STATE_RESET         EQU $05 ; reset game (unused)
LINK_STATE_TRADING       EQU $32 ; in a link trade
