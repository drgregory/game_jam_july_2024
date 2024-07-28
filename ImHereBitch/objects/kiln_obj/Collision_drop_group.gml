/// @description Insert description here
// You can write your code in this editor

if ( other.current_sprite_index < global.num_alchemy_elements ) {
	global.player_score = global.player_score + global.player_multiplier * global.score_base;

	other.update_drop_group_object();
}

