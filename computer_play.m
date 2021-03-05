function [computer_cards, center_cards] = computer_play(deck1,computer_cards,center_cards,pictures) 
    
    play = deck1(end);
    center_cards = [center_cards play];
    
    %display
    figure(1); 
    p1 = subplot(1,2,1);
    pull = pictures(play);
    pull = convertCharsToStrings(pull);
    src = strcat('PNG/',pull);
    imread(src);
    imshow(src);
    axis('image');
    p2 = subplot(1,2,2);
    text(.1,.1,'Computer turn. Click kgjf for your turn.');
    
    %take the card away 
    deck1(end) = [];
end

