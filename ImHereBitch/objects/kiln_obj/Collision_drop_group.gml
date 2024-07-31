/// @description Insert description here
// You can write your code in this editor

if ( other.current_sprite_index < global.num_alchemy_elements ) {
	global.player_score = global.player_score + global.player_multiplier * global.score_base;
	audio_play_sound(ooooh, 0, false, 1, 0, random_range(0.8, 1.2));
	other.update_drop_group_object();
}

