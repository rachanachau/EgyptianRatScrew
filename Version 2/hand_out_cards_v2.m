function [deck1,deck2,computer_cards,player_cards] = hand_out_cards_v2()
%HAND_OUT_CARDS_V2: Returns two arrays of length 26 that collectively contain
%all of the integers from 1 to 52 (shuffled)
%(deck1 and deck2)
%   Input: no input
%   Output: deck1,deck2 - each an array of 26 integers, randomly chosen
%           from an array of integers 1 through 52; there are no shared
%           values between the two decks and no repeated values
%           computer_cards - integer noting the number of cards the
%           computer has
%           player_cards - integer noting the number of cards the
%           player has
global deck1 deck2 player_cards computer_cards; 
full_deck = randperm(52);
deck1 = full_deck(1:26);
deck2 = full_deck(27:52);
player_cards = length(deck1);
computer_cards = length(deck2); 
end

