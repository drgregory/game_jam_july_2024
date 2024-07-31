/// @description Insert description here
// You can write your code in this editor


if ( path_sprite_index != element_path_items_[ element_path_idx_ ] ) {
	
	path_sprite_index = element_path_items_[ element_path_idx_ ];
	sprite_index = global.alchemy_to_sprite_index[ path_sprite_index ];

}


x = outline_obj_.x + 0.5 * outline_obj_.sprite_width - 0.5 * sprite_width;
y = outline_obj_.y + 0.5 * outline_obj_.sprite_height - 0.5 * sprite_height;
