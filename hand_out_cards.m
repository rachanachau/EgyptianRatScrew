function [deck1,deck2,computer_cards,player_cards] = hand_out_cards(computer_cards,player_cards)
%HAND_OUT_CARDS: Returns two arrays of length 26 that collectively contain
%all of the integers from 1 to 52 (shuffled)
%(deck1 and deck2)
%   Input: no input
%   Output: deck1,deck2 - each an array of 26 integers, randomly chosen
%   from an array of integers 1 through 52; there are no shared values
%   between the two decks and no repeated values
full_deck = randperm(52);
deck1 = full_deck(1:26);
deck2 = full_deck(27:52);
player_cards = 52/2;
computer_cards = 52/2; 
end