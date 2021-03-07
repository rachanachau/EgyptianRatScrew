% Creating a deck of cards 
suit = {'of_Hearts', 'of_Diamonds', 'of_Spades', 'of_Clubs'};
rank = {'Ace', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K'};

i= 1; % index of next card
for k= 1:4
    % Set up the cards in suit k
    for j= 1:13
        deck{i}= [ rank{j} ' ' suit{k} ];
        i= i + 1;
    end
end

%%%%%%%% Creating containers for cards %%%%%%%%%%%
global cardDeckNum cardDeckSuite cardDeckName cardDeckPictures; 
%container for card numbers 
v1 = {1,2, 3,4, 5, 6, 7, 8, 9, 10 , 11, 12,13, 1,2, 3,4, 5, 6, 7, 8, 9, 10 , 11, 12,13,1,2, 3,4, 5, 6, 7, 8, 9, 10 , 11, 12,13,1,2, 3,4, 5, 6, 7, 8, 9, 10 , 11, 12,13};
k1 = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52};
cardDeckNum = containers.Map(k1,v1);

%container for card suites 
v2 = {'H','H','H','H','H','H','H','H','H','H','H','H','H','D','D','D','D','D','D','D','D','D','D','D','D','D','S','S','S','S','S','S','S','S','S','S','S','S','S','C','C','C','C','C','C','C','C','C','C','C','C','C'};
k2 = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52};
cardDeckSuite = containers.Map(k2,v2);

%container for name of cards 
v3 = {'Ace of Hearts','2 of Hearts','3 of Hearts','4 of Hearts','5 of Hearts','6 of Hearts','7 of Hearts','8 of Hearts','9 of Hearts','10 of Hearts','J of Hearts','Q of Hearts','K of Hearts','Ace of Diamonds','2 of Diamonds','3 of Diamonds','4 of Diamonds','5 of Diamonds','6 of Diamonds','7 of Diamonds','8 of Diamonds','9 of Diamonds','10 of Diamonds','J of Diamonds','Q of Diamonds','K of Diamonds','Ace of Spades','2 of Spades','3 of Spades','4 of Spades','5 of Spades','6 of Spades','7 of Spades','8 of Spades','9 of Spades','10 of Spades','J of Spades','Q of Spades','K of Spades','Ace of Clubs','2 of Clubs','3 of Clubs','4 of Clubs','5 of Clubs','6 of Clubs','7 of Clubs','8 of Clubs','9 of Clubs','10 of Clubs','J of Clubs','Q of Clubs','K of Clubs'};
k3 = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52};
cardDeckName = containers.Map(k3,v3);

%container for image pictures 
v4 = {'AH.png','2H.png','3H.png','4H.png','5H.png','6H.png','7H.png','8H.png','9H.png','10H.png','JH.png','QH.png','KH.png','AD.png','2D.png','3D.png','4D.png','5D.png','6D.png','7D.png','8D.png','9D.png','10D.png','JD.png','QD.png','KD.png','AS.png','2S.png','3S.png','4S.png','5S.png','6S.png','7S.png','8S.png','9S.png','10S.png','JS.png','QS.png','KS.png','AC.png','2C.png','3C.png','4C.png','5C.png','6C.png','7C.png','8C.png','9C.png','10C.png','JC.png','QC.png','KC.png'};
k4 = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52};
cardDeckPictures = containers.Map(k4,v4);

%after testing the displaying images, we decided to add an animation for the
%user to stimulate them having to wait for the cards to be shuffled in real
%life 
figure(1);
for i=1:52
    p1 = subplot(1,2,1);
    cla(p1);
    pull = cardDeckPictures(i);
    pull = convertCharsToStrings(pull);
    src = strcat('PNG/',pull);
    imread(src);
    set(gcf, 'Position', get(0, 'Screensize')); %makes game full screen
    imshow(src);
    axis('image');
    p2 = subplot(1,2,2);
    cla(p2);
    if i < 25 
        set(gcf, 'Position', get(0, 'Screensize'));
        hi = text(.1,.1,'We are setting up all the cards! Are you ready?');
    else
        cla(p2);
        set(gcf, 'Position', get(0, 'Screensize'));
        text(.1,.1,'We hope so, because we will be done in a sec!');
    end  
    axis off
    axis image
    pause(.001); 
end
cla(p1);
cla(p2);
