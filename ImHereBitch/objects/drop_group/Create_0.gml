/// @description Insert description here
// You can write your code in this editor
 


//image_angle = 270;
motion_add( 270, random_range( 0.75, 3.0 ) );
object_pqueue = ds_priority_create();

current_sprite_index = irandom( global.num_alchemy_elements - 1 );
sprite_index = global.alchemy_to_sprite_index[ current_sprite_index ];

global.drop_instance_ids[ global.cur_drop_idx ] = id;
global.cur_drop_idx += 1;

function update_drop_group_object() {

	y = 0;
	motion_add( 270, 0.5 * random_range( -1, 1 ) );
	
	var random_sprite_index = irandom( global.num_alchemy_elements - 1 );
	ds_priority_add( object_pqueue, random_sprite_index, global.LOW_PRIORITY );
	current_sprite_index = ds_priority_delete_min( object_pqueue );
	sprite_index = global.alchemy_to_sprite_index[ current_sprite_index ];
}
