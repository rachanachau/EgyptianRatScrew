%Greeting to start
clc;
fprintf('\n********************************\n')
fprintf('\n*           WELCOME            *\n')
fprintf('\n*              To              *\n')
fprintf('\n*       Egyptian Rat Screw     *\n') 
fprintf('\n********************************\n')

z = input ('What is your name? \n', 's');
clc;
part1 = 'Hi, ';
part2 = '! ';
part3 = 'Do you want to start the game or review the rules?';
greeting = [part1 z part2 part3];


fprintf (greeting);
fprintf('\n           \n')


%Instructions or start game
fprintf('\n Enter corresponding number \n')
fprintf('\n (1) Start the Game\n')
fprintf('\n (2) Check the Rules\n')
fprintf('\n           \n')
player_input = input('');



%****************
% Do we want to button press or enter in command window?
%k = waitforbuttonpress;
%value = double(get(gcf,'CurrentCharacter'))
%if value == 50
    %fprintf.....

clc;
% Enter number 1, run the game
%       if player_input == 1
%       blah blah blah%

%Enter number 2, 
if player_input == 2
    fprintf('\n   Rules for Egyptian Rat Screw:      \n')
    fprintf('\n         1. A player wins when their opponent loses all of their cards.      \n')
    fprintf('\n         2. Players take turns flipping cards into the center pile.  \n')
    fprintf('\n            (Press ___ to flip cards. \n')
    fprintf('\n         3. When a certain card or pattern of cards is played, the first player to "slap"  \n')
    fprintf('\n            the pile wins all the cards in the pile.\n')
    fprintf('\n            Do so by pressing ___. \n')
    fprintf('\n                 Cards/Patterns to pay attention to: \n')
    fprintf('\n                      - Jacks \n')
    fprintf('\n                          - Anytime you see a Jack, slap.\n')
    fprintf('\n                      - Doubles \n')
    fprintf('\n                          - Anytime you see a two of the same card, slap.\n')
    fprintf('\n                          - For example: a four and a four\n')
    fprintf('\n         4. If you slap incorrectly, you must "burn" – or lose – one of your cards \n')
    fprintf('\n           ')
    fprintf('\n         Good luck :) \n')

    fprintf('\n           ')
    fprintf('\n         Enter any keys to return\n')  

    pause;
    clc;
    
end

