/// @description Insert description here
// You can write your code in this editor

if ( sprite_index == man_flaskup ) {
	
	if ( other.current_sprite_index >= global.num_alchemy_elements ) {
		// then it is a monster
		global.player_health_p2 -= 1;
	}

	reshuffle_element_path = true;
	if ( other.current_sprite_index == global.element_path_items_p2[ 0 ] ) {
		global.player_multiplier_p2 = global.player_multiplier_p2 * global.SCORE_MULTIPLIER_EXP_BASE;

	} else if ( other.current_sprite_index == global.element_path_items_p2[ 1 ] ) {
		global.player_multiplier_p2 = global.player_multiplier_p2 * 1.0;

	} else if ( other.current_sprite_index == global.element_path_items_p2[ 2 ] ) {
		global.player_multiplier_p2 = 1.0;

	} else {
		reshuffle_element_path = false;
	}
	
	if ( reshuffle_element_path ) {
		global.element_path_items_p2 = array_shuffle( global.element_path_items_p2 );
	}
	
	other.update_drop_group_object();
		
} else if ( sprite_index == man_swordup ) {
	
	other.update_drop_group_object();
	
} else {
	
	if ( other.current_sprite_index >= global.num_alchemy_elements ) {
		// then it is a monster - could be pulled into a function
		global.player_health_p2 -= 1;
	}
	
	other.update_drop_group_object();
	
}



