%LISTENER:  used to wait for a computer key press 
%   registers when player 
%       - flips: 102
%       - slaps the center: 115
%When the center is slapped the message box will indicaet if the slap is
%valid or not
%Lead: SH: 2 hours 

global deck2 pseudo_center center_cards player_cards; 
press = waitforbuttonpress;
val = double(get(gcf, 'CurrentCharacter'));
if val == 102
    [player_cards, center_cards] = player_play(deck2,player_cards,center_cards,cardDeckPictures);
elseif valid_slap == 1 && val == 115
    figure(1);
    clf; 
    msgbox('player made a valid slap');
    [center_cards,pseudo_center,deck2,player_cards] = grab_deck_and_clear(center_cards,pseudo_center,deck2);
    
elseif valid_slap == 0 && val == 115
     msgbox('player made a slap that is not valid');
     [pseudo_center,deck2,player_cards] = invalid_slap(pseudo_center,deck2);
end