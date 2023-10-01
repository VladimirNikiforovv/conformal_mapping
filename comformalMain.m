clc
clearvars
cla
close all

t = 0:0.01:2*pi;
r = 0.9;

x = r.*cos(t) + 0.1;
y = r.*sin(t) + 0.1;

u = zeros(1,length(x));
v = zeros(1,length(y));


for i =1:length(t)
    [u(i), v(i)] = conformMap(x(i),y(i));
end

plot(x,y,v,u);

