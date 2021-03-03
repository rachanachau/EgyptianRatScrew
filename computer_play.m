function [computer_cards, center_cards] = computer_play(deck1,computer_cards,center_cards,pictures) 
    %computer_cards = computer_cards - 1; 
    
    %sample deck for testing
%     deck1 = [1,6, 7, 9]
%     center_cards = []; 
    play = deck1(end);
    center_cards = [center_cards play];
    
    %display
    figure(1); 
    p1 = subplot(1,2,1);
    pull = CardDeckPictures(play);
    pull = convertCharsToStrings(pull);
    src = strcat('PNG/',pull);
    imread(src);
    imshow(src);
    axis('image');
    
    %take the card away 
    deck1(end) = [];
    
end

