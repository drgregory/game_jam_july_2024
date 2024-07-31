/// @description Insert description here
// You can write your code in this editor

if ( id == instance_find( man, 1 ).id ) {
	character_state = ( character_state + 1 ) % number_swordguy_states;
	sprite_index = sword_guy_sprites[ character_state ];
}
