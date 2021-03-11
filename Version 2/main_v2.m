%MAIN_V2: runs the game and calls different functions/scripts 
%lead: SH: 1 hour – debugging and adding necessary changes

global cardDeckNum cardDeckSuite cardDeckName valid_slap cardDeckPictures center_cards deck1 deck2 computer_cards player_cards pseudo_center;
center_cards = []; 
pseudo_center = []; 
cards_v2; 
 
[deck1,deck2,computer_cards,player_cards] = hand_out_cards_v2(); 
valid_slap = 0; 
while computer_cards ~= 0 && player_cards ~= 0 
    [computer_cards,center_cards] = computer_play_v2(deck1,computer_cards,center_cards,cardDeckPictures); 
    [valid_slap]=rules_v2(center_cards, cardDeckNum); 
    listener_v2; 
    [valid_slap]=rules_v2(center_cards, cardDeckNum);
    pause(2.0)
end 

end_game_v2; 