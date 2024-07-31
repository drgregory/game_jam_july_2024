/// @description Insert description here
// You can write your code in this editor

//
// check for conditions to determine winner
//

p1_winner = false;
p2_winner = false;

win_description = "";

if (
	( ( global.player_health == 0 ) and ( global.player_health_p2 == 0 ) ) or
	( ( global.player_health > 0 ) and ( global.player_health_p2 > 0 ) ) ) {
		
		if ( global.player_score == global.player_score_p2 ) {
			
			if ( global.player_health == global.player_health_p2 ) {
				win_description = "tied... bummer";
				
				p1_winner = true;
				p2_winner = true;
			} else if ( global.player_health > global.player_health_p2 ) {
				win_description = "player 1 wins by overall life left";
				
				p1_winner = true;
				p2_winner = false;
			} else {
				win_description = "player 2 wins by overall life left";
				
				p1_winner = false;
				p2_winner = true;
			}
			
		} else {
		
			if ( global.player_score > global.player_score_p2 ) {
					win_description = "player 1 wins by overall score";
				
					p1_winner = true;
					p2_winner = false;			
			} else {
					win_description = "player 2 wins by overall score";
				
					p1_winner = false;
					p2_winner = true;				
			}
		}
} else {
	
		if ( global.player_health > global.player_health_p2 ) {
				win_description = "player 1 wins because player 2 died";
				
				p1_winner = true;
				p2_winner = false;			
		} else {
				win_description = "player 2 wins because player 1 died";
				
				p1_winner = false;
				p2_winner = true;
		}
}
			
			

