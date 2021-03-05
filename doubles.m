function [s_doubles] = doubles(center_cards, cardDeckNum)
%DOUBLES: determines if card from center deck is a jack 
%   Input:
%       center_cards – an array of integers representing the cards in the
%          center pile
%       CardDeckNum – map container containing keys 1:52 which correspond
%           to the value of each card
%   Output: 
%       s_doubles – indicates if the last two cards in the center are the
%       same

global center_cards cardDeckNum s_doubles;

%%%%%test 
% %container for card numbers if we can't make it a global variable
% v1 = {1,2, 3,4, 5, 6, 7, 8, 9, 10 , 11, 12,13, 1,2, 3,4, 5, 6, 7, 8, 9, 10 , 11, 12,13,1,2, 3,4, 5, 6, 7, 8, 9, 10 , 11, 12,13,1,2, 3,4, 5, 6, 7, 8, 9, 10 , 11, 12,13};
% k1 = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52};
% CardDeckNum = containers.Map(k1,v1);



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