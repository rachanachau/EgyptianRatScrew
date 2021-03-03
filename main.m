player_cards = 0;
computer_cards = 0;
center_cards = []; 
Cards; 
[deck1,deck2,computer_cards,player_cards] = hand_out_cards(computer_cards,player_cards); 
[computer_cards,center_cards] = computer_play(deck1,computer_cards,center_cards,CardDeckPictures); 