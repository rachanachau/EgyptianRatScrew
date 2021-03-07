%player_cards = 0;
%computer_cards = 0;
%modified hand_out_cards to have no input; output will initialize number of
%cards each person has (26 to start)
%leaving it as comment now in case you want to initialize at 0, but I
%figured that might cause problems in our while loop if we have it run
%while neither equals 0
%= containers.Map('KeyType','double','ValueType','char');

global cardDeckNum cardDeckSuite cardDeckName cardDeckPictures center_cards deck1 deck2 computer_cards player_cards pseudo_center;
center_cards = []; 
pseudo_center = []; 
cards_v2; 

[deck1,deck2,computer_cards,player_cards] = hand_out_cards_v2(); 
while computer_cards ~= 0 || player_cards ~= 0 
    [computer_cards,center_cards] = computer_play_v2(deck1,computer_cards,center_cards,cardDeckPictures); 
    [valid_slap]=rules_v2(center_cards, cardDeckNum); 
    listener_v2; 
    [valid_slap]=rules_v2(center_cards, cardDeckNum);
    pause(2.0)
end 

if player_cards == 0
    url = 'https://images-na.ssl-images-amazon.com/images/I/31yuQjazucL._SY291_BO1,204,203,200_QL40_ML2_.jpg';
    img = imread(url);
    imshow(img);
    set(gcf, 'Position', get(0, 'Screensize'));

else 
    url2 = 'https://image.freepik.com/free-vector/winner-banner-falling-ribbons-winner-winners-lottery-game-jackpot-prize_166001-90.jpg';
    img2 = imread(url2);
    imshow(img2);
    set(gcf, 'Position', get(0, 'Screensize'));

end 