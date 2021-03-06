function [s_add_ten] = add_ten_v2(center_cards, cardDeckNum)
%ADD_TEN_V2: determines if the last two cards in the center pile add to ten
%   Input:
%       center_cards – an array of integers representing the cards in the
%          center pile
%       CardDeckNum – map container containing keys 1:52 which correspond
%           to the value of each card
%   Output: 
%       s_add_ten – indicates if the last two cards in the center add to
%       ten

global center_cards cardDeckNum;

%if loop needed to determine if there are at least two cards in the center 
if length(center_cards) < 2 
    s_add_ten = false; 
else 
    last = cardDeckNum(center_cards(end));
    second_last = cardDeckNum(center_cards(end-1));

    if (second_last + last) == 10
        s_add_ten = true;
    else
        s_add_ten = false;
    end
end