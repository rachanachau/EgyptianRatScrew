% Creating a deck of cards 
suit = {'Hearts', 'Diamonds', 'Spades', 'Clubs'};
rank = {'A', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K'};

i= 1; % index of next card
for k= 1:4
    % Set up the cards in suit k
    for j= 1:13
        deck{i}= [ rank{j} ' ' suit{k} ];
        i= i + 1;
    end
end

% Creating a container 
%k = {'A Hearts','2 Hearts','3 Hearts','4 Hearts','5 Hearts','6 Hearts','7 Hearts','8 Hearts','9 Hearts','10 Hearts','J Hearts','Q Hearts','K Hearts','A Diamonds','2 Diamonds','3 Diamonds','4 Diamonds','5 Diamonds','6 Diamonds','7 Diamonds','8 Diamonds','9 Diamonds','10 Diamonds','J Diamonds','Q Diamonds','K Diamonds','A Spades','2 Spades','3 Spades','4 Spades','5 Spades','6 Spades','7 Spades','8 Spades','9 Spades','10 Spades','J Spades','Q Spades','K Spades','A Clubs','2 Clubs','3 Clubs','4 Clubs','5 Clubs','6 Clubs','7 Clubs','8 Clubs','9 Clubs','10 Clubs','J Clubs','Q Clubs','K Clubs'};
%v = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52};
%CardDeckMap = containers.Map(k,v);




%Need to assign it pictures? Or is it a different step?