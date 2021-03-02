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
part3 = 'Here are two options for you to select';
greeting = [part1 z part2 part3];


fprintf (greeting);
fprintf('\n           \n')


%Instructions or start game
fprintf('\n Enter corresponding number \n')
fprintf('\n (1) Start the Game\n')
fprintf('\n (2) Check the Rules\n')
fprintf('\n           \n')
player_input = input('Please enter the number here: ');

clc;
% Enter number 1, run the game
%       if player_input == 1
%       blah blah blah%

%Enter number 2, 
if player_input == 2
    fprintf('\n         Here are the rules for Egyptian Rat Screw      \n')
    fprintf('\n         1.The object of the game is to get as many cards as possible  \n')
    fprintf('\n         2.To do so, you must take turns with the computer flipping over your cards  \n')
    fprintf('\n           press ___ to flip cards. \n')
    fprintf('\n         3.While flipping over cards, you will keep an eye out for certain patterns; \n')
    fprintf('\n           when you notice a certain card, you will try to "slap" the center before the computer gets a chance. \n')
    fprintf('\n           The value of a hand is the sum of the point values of the individual cards.\n')
    fprintf('\n           Do so by pressing ___. \n')
    fprintf('\n           Patterns to pay attention to: \n')
    fprintf('\n                 - Jacks \n')
    fprintf('\n                     - Anytime you see a Jack, slap.\n')
    fprintf('\n                 - Doubles \n')
    fprintf('\n                     - Anytime you see a two of the same card, slap.\n')
    fprintf('\n                     - For example: a four and a four\n')
    fprintf('\n         4.If you slap incorrectly, you must "burn" one of your cards \n')
    fprintf('\n           (one of your cards will be put at the bottom of the center pile).\n')
    fprintf('\n         5.Which ever player is able to get the whole deck, wins the game. \n')

    fprintf('\n           ')
    fprintf('\n         Enter any keys to return\n')  

    pause;
    clc;
    
end

