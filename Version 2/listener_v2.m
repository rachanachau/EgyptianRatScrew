global deck2 pseudo_center center_cards player_cards; 
press = waitforbuttonpress
val = double(get(gcf, 'CurrentCharacter'))
if val == 102
    [player_cards, center_cards] = player_play_v2(deck2,player_cards,center_cards,cardDeckPictures);
    
elseif valid_slap == 1 && val == 115
    msgbox('valid');
    [center_cards,pseudo_center,deck2,player_cards] = grab_deck_and_clear_v2(center_cards,pseudo_center,deck2);
    
elseif valid_slap == 0 && val == 115
     msgbox('not valid');
     [pseudo_center,deck2,player_cards] = invalid_slap_v2(pseudo_center,deck2);
end
    


