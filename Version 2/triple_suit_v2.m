function [s_triple_suit] = triple_suit_v2(center_cards, cardDeckSuite)
%TRIPLE_SUIT_V2: determines if there are three of the same suit in a row
%   Input:
%       center_cards – an array of integers representing the cards in the
%          center pile
%       cardDeckSuite – map container containing keys 1:52 which correspond
%           to the suit of each card
%   Output: 
%       s_triple_suit – boolean representing if the last three cards in the
%       center pile are the same suit
%Lead: JM: 1 hour – including debugging and sorting out map containers 


global center_cards cardDeckSuite;

%if loop needed to determine if there are at least three cards in the center 
if length(center_cards) < 3
    s_triple_suit = false; 
else 
    last = cardDeckSuite(center_cards(end));
    second_last = cardDeckSuite(center_cards(end-1));
    third_last = cardDeckSuite(center_cards(end-2));

    if (second_last == last) && (third_last == last)
        s_triple_suit = true;
    else
        s_triple_suit = false;
    end
end