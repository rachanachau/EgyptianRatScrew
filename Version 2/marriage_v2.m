function [s_marriage] = marriage_v2(center_cards, cardDeckNum)
%MARRIAGE_V2: determines if last two cards from center deck are a king and queen 
%   Input:
%       center_cards – an array of integers representing the cards in the
%          center pile
%       CardDeckNum – map container containing keys 1:52 which correspond
%           to the value of each card
%   Output: 
%       s_marriage – inidicates if the last two cards from center deck are a king and queen 

global center_cards cardDeckNum;


% 
% last = cardDeckNum(center_cards(end))
% second_last = cardDeckNum(center_cards(end-1))

if length(center_cards) < 2 
    s_marriage = false; 
else 
    last = cardDeckNum(center_cards(end));
    second_last = cardDeckNum(center_cards(end-1));

    if second_last == 12 && last == 13
        s_marriage = true;
    elseif second_last == 13 && last == 12
        s_marriage = true;
    else
        s_marriage = false;
    end
end

end


