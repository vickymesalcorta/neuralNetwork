ans = [];

x = 0:pi/10:10*pi;
y = sin(x);


ans(:,1)= x;
ans(:,2)= y;



save(['seno.mat'], 'ans');