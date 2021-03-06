%Version 2
%Opening
clc;
fprintf('\n********************************\n')
fprintf('\n*           WELCOME            *\n')
fprintf('\n*              To              *\n')
fprintf('\n*       Egyptian Rat Screw     *\n') 
fprintf('\n********************************\n')

%Greeting to start 
z = input ('What is your name? \n', 's');
clc;
url = 'http://www.clker.com/cliparts/C/G/V/6/j/7/egyptian-rat-hi.png';
img = imread(url);
imshow(img);


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

%Button press to determine their choice
k = waitforbuttonpress;
start.value = double(get(gcf,'CurrentCharacter'));



clc;
% Enter number 1, run the game
if start.value == 49
main;
end

%Enter number 2, display rules
%if player_input == 2
if start.value == 50
    fprintf('\n   Rules for Egyptian Rat Screw:      \n')
    fprintf('\n         1. A player wins when their opponent loses all of their cards.      \n')
    fprintf('\n         2. Players take turns flipping cards into the center pile.  \n')
    fprintf('\n            (Press ___ to flip cards.) \n')
    fprintf('\n         3. When a certain card or pattern of cards is played, the first player to "slap"  \n')
    fprintf('\n            the pile wins all the cards in the pile.\n')
    fprintf('\n            (Press ___ to slap center pile.) \n')
    fprintf('\n                 Cards/Patterns to pay attention to: \n')
    fprintf('\n                      - Jacks \n')
    fprintf('\n                          - Anytime you see a Jack, slap.\n')
    fprintf('\n                      - Doubles \n')
    fprintf('\n                          - Anytime you see two of the same card, slap.\n')
    fprintf('\n                          - For example: a four then another four \n')
    fprintf('\n         4. If you slap incorrectly, you must "burn" – or lose – one of your cards. \n')
    fprintf('\n           ')
    fprintf('\n         Good luck :) \n')

    fprintf('\n           ')
    fprintf('\n         Enter any key to start the game\n')  

    pause;
    clc;
    main;
    
end

