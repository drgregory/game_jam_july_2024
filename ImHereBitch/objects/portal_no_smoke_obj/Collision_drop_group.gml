/// @description Insert description here
// You can write your code in this editor

if ( ( !global.portal_blocked ) and ( other.current_sprite_index < global.num_alchemy_elements ) ) {
	
	var random_monster_index = irandom( global.num_monsters - 1 ) + global.num_alchemy_elements;
	
	ds_priority_add( global.drop_instance_ids_p2[ irandom( global.num_drop_elements - 1 ) ].object_pqueue, random_monster_index, global.HIGH_PRIORITY );
	audio_play_sound(snd_portal_suck, 0, false, 1, 0, random_range(.8, 1.2));
} else if ( ( !global.portal_blocked ) and ( other.current_sprite_index >= global.num_alchemy_elements ) ) {
	// hit by a monster
	alarm[ 0 ] = global.MONSTER_COLLISION_TIMEOUT;
	global.portal_blocked = true;
	audio_play_sound(snd_oh_no, 0, false, 1, 0, 1);
}

other.update_drop_group_object();
