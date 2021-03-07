function [player_cards, center_cards] = player_play_v2(deck2,player_cards,center_cards,pictures)
%PLAYER_PLAY_V2: 


 global center_cards deck2 player_cards; 
 play = deck2(end);
 center_cards = [center_cards play];
 
 %display
 figure(1);
 set(gcf, 'Position', get(0, 'Screensize'));
 clf; 
 p1 = subplot(1,2,1);
 pull = pictures(play);
 pull = convertCharsToStrings(pull);
 src = strcat('PNG/',pull);
 imread(src);
 imshow(src);
 axis('image');
 p2 = subplot(1,2,2);
 text(.1,.1,'Your turn.');
 p_points = string(player_cards -1);
 p_prompt1 = 'You have';
 p_prompt2 = 'cards';
 player_points = strcat(p_prompt1," ", p_points, " ", p_prompt2);
 text(.1,.03,player_points);
 axis off
 axis image
 
 %take the card away 
 deck2(end) = [];
 player_cards = player_cards - 1; 
end

