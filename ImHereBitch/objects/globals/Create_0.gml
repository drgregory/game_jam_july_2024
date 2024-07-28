/// @description Insert description here
// You can write your code in this editor

global.num_alchemy_elements = 7;
global.num_monsters = 5;

global.num_drop_elements = 4;

global.cur_drop_idx = 0;
global.drop_instance_ids = array_create( global.num_drop_elements );

global.num_total_elements = global.num_alchemy_elements + global.num_monsters;

global.HIGH_PRIORITY = 1;
global.MID_PRIORITY = 2;
global.LOW_PRIORITY = 3;

global.alchemy_to_sprite_index = array_create( global.num_total_elements );
global.alchemy_to_sprite_index[ 0 ] = element_0;
global.alchemy_to_sprite_index[ 1 ] = element_1;
global.alchemy_to_sprite_index[ 2 ] = element_2;
global.alchemy_to_sprite_index[ 3 ] = element_3;
global.alchemy_to_sprite_index[ 4 ] = element_4;
global.alchemy_to_sprite_index[ 5 ] = element_5;
global.alchemy_to_sprite_index[ 6 ] = element_6;


global.alchemy_to_sprite_index[ 7 ] = monster_0;
global.alchemy_to_sprite_index[ 8 ] = monster_1;
global.alchemy_to_sprite_index[ 9 ] = monster_2;
global.alchemy_to_sprite_index[ 10 ] = monster_3;
global.alchemy_to_sprite_index[ 11 ] = monster_4;



global.element_path_items = array_create( global.num_alchemy_elements );

for ( i = 0; i < global.num_alchemy_elements; i++ ) {
	global.element_path_items[ i ] = i;
}

global.element_path_items = array_shuffle( global.element_path_items );


global.player_score = 0;
global.player_multiplier = 1.0;
global.score_base = 10.0;

global.player_health = 2;
