function [s_sandwich] = sandwich_v2(center_cards, cardDeckNum)
%SANDWICH_V2: determines if last card is the same as the third to last card
%   Input:
%       center_cards – an array of integers representing the cards in the
%          center pile
%       CardDeckNum – map container containing keys 1:52 which correspond
%           to the value of each card
%   Output: 
%       s_sandwich – inidicates if the last card is the same as the third to last card

global center_cards cardDeckNum;

v1 = {1,2, 3,4, 5, 6, 7, 8, 9, 10 , 11, 12,13, 1,2, 3,4, 5, 6, 7, 8, 9, 10 , 11, 12,13,1,2, 3,4, 5, 6, 7, 8, 9, 10 , 11, 12,13,1,2, 3,4, 5, 6, 7, 8, 9, 10 , 11, 12,13};
k1 = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52};
cardDeckNum = containers.Map(k1,v1);
% 
% last = cardDeckNum(center_cards(end))
% second_last = cardDeckNum(center_cards(end-1))

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


