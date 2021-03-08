function [new_center,new_pseudo,new_winner,new_winner_size] = grab_deck_and_clear_v2(center_deck,pseudo_center,winner_deck)
%GRAB_DECK_AND_CLEAR_V2: The array of integers from the center deck and
%pseudo center are appended to the winner's deck; the center and pseudo
%decks are then cleared
%   Input: center_deck - an array of integers representing the cards in the
%          center pile
%          pseudo_center - an array of integers representing the cards that
%          were "burned"; these cards are technically part of the center
%          pile but are not included in center_deck because they will not
%          count for gameplay rules
%          winner_deck - an array of integers representing the cards in
%          the slap winner's deck
%   Output: new_center - empty array
%           new_pseudo - empty array 
%           new_winner - the array winner_deck with the center_deck and
%           pseudo_center appended
%           new_winner_size - integer noting the new size of the winner's
%           deck
new_winner = cat(2,center_deck,winner_deck);
new_winner = cat(2,new_winner,pseudo_center);
new_winner_size = length(new_winner);
new_center = [];
new_pseudo = [];
end