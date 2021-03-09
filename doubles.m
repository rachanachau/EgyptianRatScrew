function [s_doubles] = doubles(center_cards, cardDeckNum)
%DOUBLES: determines if card from center deck is a jack 
%   Input:
%       center_cards – an array of integers representing the cards in the
%          center pile
%       cardDeckNum – map container containing keys 1:52 which correspond
%           to the value of each card
%   Output: 
%       s_doubles – indicates if the last two cards in the center are the
%       same

global center_cards cardDeckNum;


%if loop needed to determine if there's at least two cards in the center 
if length(center_cards) < 2 
    s_doubles = false; 
else 
    last = cardDeckNum(center_cards(end));
    second_last = cardDeckNum(center_cards(end-1));

    if second_last == last
        s_doubles = true;
    else
        s_doubles = false;
    end
end