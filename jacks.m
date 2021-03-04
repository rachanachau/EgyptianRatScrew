function [s_jack] = jacks(center_cards, CardDeckNum)
%SLAP_JACK: determines if card from center deck is a jack 
%   Input:
%       center_cards – an array of integers representing the cards in the
%          center pile
%       CardDeckNum – map container containing keys 1:52 which correspond
%           to the value of each card
%   Output: 
%       s_jack – inidicates if the last card in the center is a jack or not


%%%%%test 
%container for card numbers if we can't make it a global variable
v1 = {1,2, 3,4, 5, 6, 7, 8, 9, 10 , 11, 12,13, 1,2, 3,4, 5, 6, 7, 8, 9, 10 , 11, 12,13,1,2, 3,4, 5, 6, 7, 8, 9, 10 , 11, 12,13,1,2, 3,4, 5, 6, 7, 8, 9, 10 , 11, 12,13};
k1 = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52};
CardDeckNum = containers.Map(k1,v1);

number = CardDeckNum(center_cards(end))

if number == 11
    s_jack = true;
else
    s_jack = false;
end


