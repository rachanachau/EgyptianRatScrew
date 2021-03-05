%player_cards = 0;
%computer_cards = 0;
%modified hand_out_cards to have no input; output will initialize number of
%cards each person has (26 to start)
%leaving it as comment now in case you want to initialize at 0, but I
%figured that might cause problems in our while loop if we have it run
%while neither equals 0
%= containers.Map('KeyType','double','ValueType','char');

global cardDeckNum cardDeckSuite cardDeckName cardDeckPictures center_cards deck1 deck2 computer_cards; 
center_cards = []; 
Cards; 
[deck1,deck2,computer_cards,player_cards] = hand_out_cards(); 
for ii=1:3
    [computer_cards,center_cards] = computer_play(deck1,computer_cards,center_cards,cardDeckPictures); 
    pause(2.0)
    listener; 
    pause(3.0)
end 