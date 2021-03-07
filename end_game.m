pictures = ["win1.jpg", "win2.jpg", "win3.jpg", "win4.jpg", "win5.jpg", "win6.jpg"];

figure(1);
clf;
for ii=1:6
    pull = pictures(ii)
    src = strcat('win/',pull);
    imread(src);
    imshow(src);
    axis('image');
    axis off
end 