/// @description Insert description here
// You can write your code in this editor

if ( sprite_index == man_flaskup ) {
	
	if ( other.current_sprite_index >= global.num_alchemy_elements ) {
		// then it is a monster
		global.player_health -= 1;
	}

	reshuffle_element_path = true;
	if ( other.current_sprite_index == global.element_path_items[ 0 ] ) {
		global.player_multiplier = global.player_multiplier * 1.05;

	} else if ( other.current_sprite_index == global.element_path_items[ 1 ] ) {
		global.player_multiplier = global.player_multiplier * 1.0;

	} else if ( other.current_sprite_index == global.element_path_items[ 2 ] ) {
		global.player_multiplier = 1.0;

	} else {
		reshuffle_element_path = false;
	}
	
	if ( reshuffle_element_path ) {
		global.element_path_items = array_shuffle( global.element_path_items );
	}
	
	other.update_drop_group_object();
		
} else if ( sprite_index == man_swordup ) {
	
	other.update_drop_group_object();
	
} else {
	
	if ( other.current_sprite_index >= global.num_alchemy_elements ) {
		// then it is a monster - could be pulled into a function
		global.player_health -= 1;
	}
	
	other.update_drop_group_object();
	
}


