global cardDeckNum cardDeckSuite cardDeckName valid_slap cardDeckPictures center_cards deck1 deck2 computer_cards player_cards pseudo_center;
center_cards = []; 
pseudo_center = []; 
Cards; 
 
[deck1,deck2,computer_cards,player_cards] = hand_out_cards(); 
valid_slap = 0; 
while computer_cards ~= 0 && player_cards ~= 0 
    [computer_cards,center_cards] = computer_play(deck1,computer_cards,center_cards,cardDeckPictures); 
    pause(1.0)
    [valid_slap]=rules(center_cards, cardDeckNum); 
    listener; 
    [valid_slap]=rules(center_cards, cardDeckNum);
    pause(2.0)
end 

if player_cards == 0
    url = 'https://images-na.ssl-images-amazon.com/images/I/31yuQjazucL._SY291_BO1,204,203,200_QL40_ML2_.jpg';
    img = imread(url);
    set(gcf, 'Position', get(0, 'Screensize'));
    imshow(img);

else 
    url2 = 'https://image.freepik.com/free-vector/winner-banner-falling-ribbons-winner-winners-lottery-game-jackpot-prize_166001-90.jpg';
    img2 = imread(url2);
    set(gcf, 'Position', get(0, 'Screensize'));
    imshow(img2);

end 