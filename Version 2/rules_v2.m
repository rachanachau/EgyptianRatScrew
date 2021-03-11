function [valid_slap] = rules_v2(center_cards, cardDeckNum, cardDeckSuite)
%RULES_V2: Evaluates when any one of the rules is true; if one of the rules is
%true, a slap can occur
%  Input:
%       center_cards – an array of integers representing the cards in the
%          center pile
%       cardDeckNum – map container containing keys 1:52 which correspond
%           to the value of each card
%       cardDeckSuite – map container containing keys 1:52 which correspond
%           to the suit of each card
%   Output: 
%       valid_slap – indicates if one of the rules is true and if the
%       player should slap
%Peer Programming: JM (driver) + RC (observer): 1 hour 

global center_cards cardDeckNum cardDeckSuite valid_slap;

[s_jack] = jacks_v2(center_cards, cardDeckNum);
[s_doubles] = doubles_v2(center_cards, cardDeckNum);
[s_marriage] = marriage_v2(center_cards, cardDeckNum);
[s_add_ten] = add_ten_v2(center_cards, cardDeckNum);
[s_sandwich] = sandwich_v2(center_cards, cardDeckNum);
[s_triple_suit] = triple_suit_v2(center_cards, cardDeckSuite);

if s_jack || s_doubles || s_marriage || s_add_ten || s_sandwich || s_triple_suit
    valid_slap = true;
else 
    valid_slap = false;
end

end