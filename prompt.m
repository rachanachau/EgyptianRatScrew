%Opening
clc;
fprintf('\n********************************\n')
fprintf('\n*           WELCOME            *\n')
fprintf('\n*              To              *\n')
fprintf('\n*       Egyptian Rat Screw     *\n') 
fprintf('\n********************************\n')

%Instructions or start game

%Button press to determine their choice
instructions = imshow('instructions.png');
set(gcf, 'Position', get(0, 'Screensize'));
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
  
    therules = imshow('therules.png');
    set(gcf, 'Position', get(0, 'Screensize'));
    
    pause;
    clc;
    main;
    
end

