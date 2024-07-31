/// @description Insert description here
// You can write your code in this editor


draw_set_color( c_aqua );
draw_set_halign( fa_center );
draw_set_valign( fa_middle );
draw_set_font( fnt_win_condition );
draw_text( 0.5 * room_width, 125, win_description );


color_p1 = c_green;
color_p2 = c_green;
y_offset_p1 = -400;
y_offset_p2 = -400;

if ( p1_winner and p2_winner ) {
	color_p1 = c_green;
	color_p2 = c_green;
	
	y_offset_p1 = -400;
	y_offset_p2 = -400;

} else if ( p1_winner ) {
	color_p1 = c_green;
	color_p2 = c_red;
	
	y_offset_p1 = -400;
	y_offset_p2 = 0;
} else {
	color_p1 = c_red;
	color_p2 = c_green;
	
	y_offset_p1 = 0;
	y_offset_p2 = -400;
}
	

draw_set_font( fnt_score_report );

draw_set_color( color_p1 );
	
draw_text( 0.25 * room_width, 0.5 * room_height + y_offset_p1, "score: " + string( global.player_score ) );
draw_text( 0.25 * room_width, 0.5 * room_height + y_offset_p1 + 100, "health: " + string( global.player_health ) );

draw_set_color( color_p2 );

draw_text( 0.75 * room_width, 0.5 * room_height + y_offset_p2, "score: " + string( global.player_score_p2 ) );
draw_text( 0.75 * room_width, 0.5 * room_height + y_offset_p2 + 100, "health: " + string( global.player_health_p2 ) );
