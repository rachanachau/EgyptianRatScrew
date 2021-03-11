function [s_jack] = jacks(center_cards, cardDeckNum)
%JACKS: determines if card from center deck is a jack 
%   Input:
%       center_cards – an array of integers representing the cards in the
%          center pile
%       cardDeckNum – map container containing keys 1:52 which correspond
%           to the value of each card
%   Output: 
%       s_jack – indicates if the last card in the center is a jack or not
%Lead: RC: 30 min 


global center_cards cardDeckNum ;

%if loop needed to determine if there are at least 1 card in the center 
if length(center_cards) < 1 
    s_jack = false; 
else 
    number = cardDeckNum(center_cards(end));
    if number == 11
        s_jack = true;
    else
        s_jack = false;
        
    end 
end


