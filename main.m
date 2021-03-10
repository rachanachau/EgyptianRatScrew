%MAIN: runs the game and calls different functions/scripts 

global cardDeckNum cardDeckSuite cardDeckName valid_slap cardDeckPictures center_cards deck1 deck2 computer_cards player_cards pseudo_center;
center_cards = []; 
pseudo_center = []; 
Cards; 
 
[deck1,deck2,computer_cards,player_cards] = hand_out_cards(); 
valid_slap = 0; 
while computer_cards ~= 0 && player_cards ~= 0 
    [computer_cards,center_cards] = computer_play(deck1,computer_cards,center_cards,cardDeckPictures); 
    [valid_slap]=rules(center_cards, cardDeckNum); 
    listener; 
    [valid_slap]=rules(center_cards, cardDeckNum);
    pause(2.0)
end 

end_game; 