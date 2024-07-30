/// @description Insert description here
// You can write your code in this editor

//move_wrap( true, true, 0 );

// horizontal wrapping
//move_wrap( true, false, 0 );

if ( ( x + 0.5 * sprite_width ) > global.RIGHT_POINT_P1 ) {
	x = 0 + 0.5 * sprite_width;// - 0.5 * sprite_width + ( x + 0.5 * sprite_width - room_width );
}
if ( ( x - 0.5 * sprite_width ) < 0 ) {
	x = global.RIGHT_POINT_P1 - 0.5 * sprite_width;// - ( global.LEFT_POINT_P2 - x + 0.5 * sprite_width );
}

// simple wrapping and object change
if ( y > room_height ) {
	update_drop_group_object();
}


