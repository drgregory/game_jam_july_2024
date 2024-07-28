/// @description Insert description here
// You can write your code in this editor

draw_set_color( c_red );
draw_set_halign( fa_left );
draw_set_valign( fa_top );
draw_set_font( fnt_score );
draw_text( 100, 75, "score: " + string( global.player_score ) );


draw_set_color( c_blue );
//draw_set_font( fnt_multiplier );
draw_text( 100, 175, "multiplier: " + string( global.player_multiplier ) + "x" );

