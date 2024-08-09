/// @description Insert description here
// You can write your code in this editor

if ( ( !global.kiln_blocked ) and ( other.current_sprite_index < global.num_alchemy_elements ) ) {
	global.player_score = global.player_score + global.player_multiplier * global.score_base;
	audio_play_sound(snd_ooooh_potion_combo, 0, false, 1, 0, random_range(0.8, 1.2));
} else if ( ( !global.kiln_blocked ) and ( other.current_sprite_index >= global.num_alchemy_elements ) ) {
	// hit by a monster
	alarm[ 0 ] = global.MONSTER_COLLISION_TIMEOUT;
	global.kiln_blocked = true;
	audio_play_sound(snd_oh_no, 0, false, 1, 0, 0.8);
}

other.update_drop_group_object();
