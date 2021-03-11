%COMPUTER_PLAY_V2: flips a card and determines how computer will interact with the center pile 
%   Input: deck1 - (computer's deck) an array of 26 integers, randomly chosen
%          from an array of integers 1 through 52
%          computer_cards - integer noting the number of cards the
%          computer has
%          center_cards – an array of integers representing the cards in the
%          center pile
%   Output: 
%           computer_cards - integer noting the number of cards the
%           computer has
%           center_cards – an array of integers representing the cards in the
%           center pile
%Lead: SH: 30 min 

function [computer_cards, center_cards] = computer_play_v2(deck1,computer_cards,center_cards,pictures) 
    
    global center_cards deck1 computer_cards pseudo_center valid_slap cardDeckNum; 
    % computer will slap for 50% of valid slaps but always slap if there's a jack 
    do_slap = randi(2);
    look_up = 0; 
    if length(center_cards) >= 1
        look_up = center_cards(end);
        look_up = (cardDeckNum(look_up) == 11); 
    end
    
    
    if (do_slap == 2 && valid_slap == 1) || look_up 
        figure(1);
        set(gcf, 'Position', get(0, 'Screensize'));
        clf; 
        p1 = subplot(1,2,1);
        text(0,.2,'Computer made valid slap. Click f to flip a card.','FontSize',25);
        [center_cards,pseudo_center,deck1,computer_cards] = grab_deck_and_clear_v2(center_cards,pseudo_center,deck1); 
        c_points = string(computer_cards);
        c_prompt1 = 'Computer has';
        c_prompt2 = 'cards';
        computer_points = strcat(c_prompt1, " ", c_points, " ", c_prompt2);
        text(0,.13,computer_points,'FontSize',25);
        axis off
        axis image
    else 
        play = deck1(end);
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
        text(0,.2,'Your turn. Click f to flip a card and s to slap the deck.','FontSize',25);
        c_points = string(computer_cards - 1);
        c_prompt1 = 'Computer has';
        c_prompt2 = 'cards';
        computer_points = strcat(c_prompt1," ", c_points, " ",c_prompt2);
        text(0,.13,computer_points,'FontSize',25);
        axis off
        axis image

        %take the card away 
        deck1(end) = [];
        computer_cards = computer_cards - 1; 
    end
    
end