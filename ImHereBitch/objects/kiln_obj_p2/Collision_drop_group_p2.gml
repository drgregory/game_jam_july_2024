/// @description Insert description here
// You can write your code in this editor


if ( ( !global.kiln_blocked_p2 ) and ( other.current_sprite_index < global.num_alchemy_elements ) ) {
	global.player_score_p2 = global.player_score_p2 + global.player_multiplier_p2 * global.score_base;
} else if ( ( !global.kiln_blocked_p2 ) and ( other.current_sprite_index >= global.num_alchemy_elements ) ) {
	// hit by a monster
	alarm[ 0 ] = global.MONSTER_COLLISION_TIMEOUT;
	global.kiln_blocked_p2 = true;
}

other.update_drop_group_object();

