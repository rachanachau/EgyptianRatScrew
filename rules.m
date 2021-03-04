function [valid_slap] = rules(center_cards, CardDeckNum)
%RULES: Evaluates when any one of the rules is true; if one of the rules is
%true, a slap can occur
%  Input:
%       center_cards – an array of integers representing the cards in the
%          center pile
%       CardDeckNum – map container containing keys 1:52 which correspond
%           to the value of each card
%   Output: 
%       valid_slap – indicates if one of the rules is true and if the
%       player should slap

if jacks(center_cards, CardDeckNum) || doubles(center_cards, CardDeckNum)
    valid_slap = true;
else 
    valid_slap = false;
end

end

