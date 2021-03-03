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

% Creating a container 

v1 = {1,2, 3,4, 5, 6, 7, 8, 9, 10 , 11, 12,13, 1,2, 3,4, 5, 6, 7, 8, 9, 10 , 11, 12,13,1,2, 3,4, 5, 6, 7, 8, 9, 10 , 11, 12,13,1,2, 3,4, 5, 6, 7, 8, 9, 10 , 11, 12,13};
k1 = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52};
CardDeckNum = containers.Map(k1,v1);


v2 = {'H','H','H','H','H','H','H','H','H','H','H','H','H','D','D','D','D','D','D','D','D','D','D','D','D','D','S','S','S','S','S','S','S','S','S','S','S','S','S','C','C','C','C','C','C','C','C','C','C','C','C','C'};
k2 = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52};
CardDeckSuite = containers.Map(k2,v2);

v3 = {'Ace of Hearts','2 of Hearts','3 of Hearts','4 of Hearts','5 of Hearts','6 of Hearts','7 of Hearts','8 of Hearts','9 of Hearts','10 of Hearts','J of Hearts','Q of Hearts','K of Hearts','Ace of Diamonds','2 of Diamonds','3 of Diamonds','4 of Diamonds','5 of Diamonds','6 of Diamonds','7 of Diamonds','8 of Diamonds','9 of Diamonds','10 of Diamonds','J of Diamonds','Q of Diamonds','K of Diamonds','Ace of Spades','2 of Spades','3 of Spades','4 of Spades','5 of Spades','6 of Spades','7 of Spades','8 of Spades','9 of Spades','10 of Spades','J of Spades','Q of Spades','K of Spades','Ace of Clubs','2 of Clubs','3 of Clubs','4 of Clubs','5 of Clubs','6 of Clubs','7 of Clubs','8 of Clubs','9 of Clubs','10 of Clubs','J of Clubs','Q of Clubs','K of Clubs'};
k3 = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52};
CardDeckName = containers.Map(k3,v3);

pull = convertCharsToStrings(pull)


%Need to assign it pictures? Or is it a different step?

CardDeckSuite(1) == CardDeckSuite(2)