/// @description Insert description here
// You can write your code in this editor
 


//image_angle = 270;
motion_add( 270, random_range( global.DROP_SPEED_MINIMUM, global.DROP_SPEED_MAXIMUM ) );
object_pqueue = ds_priority_create();

current_sprite_index = irandom( global.num_alchemy_elements - 1 );
sprite_index = global.alchemy_to_sprite_index[ current_sprite_index ];

global.drop_instance_ids_p2[ global.cur_drop_idx_p2 ] = id;
global.cur_drop_idx_p2 += 1;


function update_drop_group_object() {

	y = 0;

	speed_change = random_range( global.DROP_SPEED_MINIMUM, global.DROP_SPEED_MAXIMUM );

	if ( ( vspeed + speed_change ) > global.DROP_SPEED_MAXIMUM ) {
		speed_change = -vspeed + global.DROP_SPEED_MAXIMUM;
	} else if ( ( vspeed + speed_change ) < global.DROP_SPEED_MINIMUM ) {
		speed_change = -vspeed + global.DROP_SPEED_MINIMUM;
	}
	motion_add( 270, speed_change );
	
	
	var random_sprite_index = irandom( global.num_alchemy_elements - 1 );
	ds_priority_add( object_pqueue, random_sprite_index, global.LOW_PRIORITY );
	current_sprite_index = ds_priority_delete_min( object_pqueue );
	sprite_index = global.alchemy_to_sprite_index[ current_sprite_index ];
}
