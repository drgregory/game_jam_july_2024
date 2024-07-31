/// @description Insert description here
// You can write your code in this editor

draw_set_color( c_lime );
draw_set_halign( fa_center );
draw_set_valign( fa_middle );

draw_set_font( fnt_clock );

var minutes = current_time_sec div 60;
var seconds = current_time_sec % 60;

minutes_string = string( minutes );
if ( minutes < 10 ) {
	minutes_string = "0" + minutes_string;
}
seconds_string = string( seconds );
if ( seconds < 10 ) {
	seconds_string = "0" + seconds_string;
}

draw_text( 0.25 * room_width, 75, minutes_string + ":" + seconds_string );
draw_text( 0.75 * room_width, 75, minutes_string + ":" + seconds_string );
