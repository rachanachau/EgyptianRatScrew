% END_GAME_V2: Displays winning, losing, or tied animation
%Lead: SH: 1.5 hours – coding and animation 
%Peer editing: JM (driver) + RC (observer) 1 hour: debugging and attempting to
%make animation full screen 


global player_cards computer_cards;
win = ["win1.jpg", "win2.jpg", "win3.jpg", "win4.jpg", "win5.jpg", "win6.jpg"];
lose = ["lose1.jpg", "lose2.jpg", "lose3.jpg", "lose4.jpg", "lose5.jpg", "lose6.jpg", "lose7.jpg","lose8.jpg"];
tie = ["tie.jpg", "lose5.jpg", "lose6.jpg", "lose7.jpg","lose8.jpg"];

if player_cards== 0 && computer_cards == 0
    figure(1);
    set(gcf, 'Position', get(0, 'Screensize'));
    clf;
    for ii=1:5
        pull = tie(ii); 
        src = strcat('win/',pull);
        imread(src);
        imshow(src);
        axis('image');
        axis off
    end 
elseif player_cards == 0
    figure(1);
    set(gcf, 'Position', get(0, 'Screensize'));
    clf;
    for ii=1:8
        pull = lose(ii); 
        src = strcat('win/',pull);
        imread(src);
        imshow(src);
        axis('image');
        axis off
    end 
else
   figure(1);
   set(gcf, 'Position', get(0, 'Screensize'));
    clf;
    for ii=1:6
        pull = win(ii);
        src = strcat('win/',pull);
        imread(src);
        imshow(src);
        axis('image');
        axis off
    end 
end