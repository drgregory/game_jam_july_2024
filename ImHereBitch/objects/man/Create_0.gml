/// @description Insert description here
// You can write your code in this editor
image_speed = 0;

number_swordguy_states = 3;

MAN_IDLE = 0;
MAN_SWORDUP = 1;
MAN_FLASKUP = 2;

character_state = MAN_IDLE;

sword_guy_sprites = array_create( number_swordguy_states );
sword_guy_sprites[ MAN_IDLE ] = man_idle;
sword_guy_sprites[ MAN_SWORDUP ] = man_swordup;
sword_guy_sprites[ MAN_FLASKUP ] = man_flaskup;

sprite_index = sword_guy_sprites[ character_state ];


//x = 1500 - 0.5 * sprite_width;



