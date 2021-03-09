function [s_sandwich] = sandwich_v2(center_cards, cardDeckNum)
%SANDWICH_V2: determines if last card is the same as the third to last card
%   Input:
%       center_cards – an array of integers representing the cards in the
%          center pile
%       cardDeckNum – map container containing keys 1:52 which correspond
%           to the value of each card
%   Output: 
%       s_sandwich – indicates if the last card is the same as the third to last card

global center_cards cardDeckNum;

if length(center_cards) < 3 
    s_sandwich = false; 
else 
    last = cardDeckNum(center_cards(end));
    third_last = cardDeckNum(center_cards(end-2));

    if last == third_last
        s_sandwich = true;
   
    else
        s_sandwich = false;
    end
end

end


