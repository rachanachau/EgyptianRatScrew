function [new_pseudo,new_slapper,new_slapper_size] = invalid_slap(pseudo_center,slapper_deck)
%INVALID_SLAP: The last card from the invalid slapper's deck is removed
%("burned") and appended to the pseudo_center
%   Input: pseudo_center - an array of integers representing the cards that
%          were "burned"; these cards are technically part of the center
%          pile but are not included in center_deck because they will not
%          count for gameplay rules
%          slapper_deck - an array of integers representing the cards in
%          the invalid slapper's deck
%   Output: new_pseudo - pseudo_center array with new card appended 
%           new_slapper - the array slapper_deck with the last card removed
%           new_slapper_size - integer noting the new size of the slapper's
%           deck
%Lead: JM: 20 min 
new_pseudo = [pseudo_center slapper_deck(end)];
new_slapper = slapper_deck(1:end-1);
new_slapper_size = length(new_slapper);
end