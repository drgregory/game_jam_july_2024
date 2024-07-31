/// @description Insert description here
// You can write your code in this editor

if ( ( !global.portal_blocked ) and ( other.current_sprite_index < global.num_alchemy_elements ) ) {
	
	var random_monster_index = irandom( global.num_monsters - 1 ) + global.num_alchemy_elements;
	
	ds_priority_add( global.drop_instance_ids_p2[ irandom( global.num_drop_elements - 1 ) ].object_pqueue, random_monster_index, global.HIGH_PRIORITY );
	
} else if ( ( !global.portal_blocked ) and ( other.current_sprite_index >= global.num_alchemy_elements ) ) {
	// hit by a monster
	alarm[ 0 ] = global.MONSTER_COLLISION_TIMEOUT;
	global.portal_blocked = true;
}

other.update_drop_group_object();
