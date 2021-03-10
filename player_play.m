function [player_cards, center_cards] = player_play(deck2,player_cards,center_cards,pictures)
%PLAYER_PLAY: flips a card from player's deck, take it away from the deck,
%displays the number of cards left
%   Input: deck2 - (player's deck) an array of 26 integers, randomly chosen
%          from an array of integers 1 through 52
%          player_cards - integer noting the number of cards the
%          player has
%          center_cards – an array of integers representing the cards in the
%          center pile
%   Output: 
%           player_cards - integer noting the number of cards the
%           player has
%           center_cards – an array of integers representing the cards in the
%           center pile


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
 text(0,.2,'Computer turn.','FontSize',25);
 p_points = string(player_cards -1);
 p_prompt1 = 'You have';
 p_prompt2 = 'cards';
 player_points = strcat(p_prompt1," ", p_points, " ", p_prompt2);
 text(0,.13,player_points,'FontSize',25);
 axis off
 axis image
 
 %take the card away from the array
 deck2(end) = [];
 player_cards = player_cards - 1; 
end

