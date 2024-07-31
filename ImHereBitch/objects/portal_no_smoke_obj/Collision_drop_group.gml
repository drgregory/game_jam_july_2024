/// @description Insert description here
// You can write your code in this editor

if ( other.current_sprite_index < global.num_alchemy_elements ) {
	audio_play_sound(portal_suck, 0, false, 1, 0, random_range(0.7, 1.3));
	var random_monster_index = irandom( global.num_monsters - 1 ) + global.num_alchemy_elements;
	
	ds_priority_add( global.drop_instance_ids[ irandom( global.num_drop_elements - 1 ) ].object_pqueue, random_monster_index, global.HIGH_PRIORITY );
	
	
	other.update_drop_group_object();
	
}