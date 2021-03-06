function [computer_cards, center_cards] = computer_play(deck1,computer_cards,center_cards,pictures) 
    
    global center_cards deck1 computer_cards pseudo_center valid_slap cardDeckSuite; 
    do_slap = randi(5);
    look_up = 0; 
    if length(center_cards) >= 1
        look_up = center_cards(end);
        look_up = cardDeckSuite(look_up) == 'J'; 
    end
    
    if (do_slap == 2 && valid_slap == 1) || look_up
        figure(1); 
        clf; 
        p1 = subplot(1,2,1);
        text(.1,.1,'Computer made valid slap. Click f to flip a card and s to slap the deck.');
        [center_cards,pseudo_center,deck1,computer_cards] = grab_deck_and_clear(center_cards,pseudo_center,deck1); 
    else 
        play = deck1(end);
        center_cards = [center_cards play];
        
        %display
        figure(1); 
        clf; 
        p1 = subplot(1,2,1);
        pull = pictures(play);
        pull = convertCharsToStrings(pull);
        src = strcat('PNG/',pull);
        imread(src);
        imshow(src);
        axis('image');
        p2 = subplot(1,2,2);
        text(.1,.1,'Computer turn. Click f to flip a card and s to slap the deck.');
        axis off
        axis image

        %take the card away 
        deck1(end) = [];
        computer_cards = computer_cards - 1; 
    end
    
end

