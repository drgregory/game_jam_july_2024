/// @description Insert description here
// You can write your code in this editor

if ( sprite_index == man_flaskup ) {
	
	if ( other.current_sprite_index >= global.num_alchemy_elements ) {
		// then it is a monster
		global.player_health -= 1;
		audio_play_sound(ooph, 0, false, 1, 0, random_range(0.7, 1.3));
	}

	reshuffle_element_path = true;
	if ( other.current_sprite_index == global.element_path_items[ 0 ] ) {
		global.player_multiplier = global.player_multiplier * 1.05;
		audio_play_sound(ooph, 0, false, 1, 0, 2);

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
	audio_play_sound(sword_collision, 0, false, 1, 0, random_range(0.7, 1.3));
	
} else {
	
	if ( other.current_sprite_index >= global.num_alchemy_elements ) {
		// then it is a monster - could be pulled into a function
		global.player_health -= 1;
		audio_play_sound(ooph, 0, false, 1, 0, random_range(0.7, 1.3));
	}
	
	other.update_drop_group_object();
	
}


