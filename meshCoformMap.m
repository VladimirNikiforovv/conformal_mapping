clc
clearvars
cla
close all


imag = imread('5.jpg');


x = -0.9:0.005:0.9;
y = -0.9:0.005:0.9;

imag = imresize(imag, [length(x), length(y)]);

u = zeros(1,length(x));
v = zeros(1,length(y));
U = zeros(length(y),length(y));
V = zeros(length(x),length(x));
[X,Y] = meshgrid(x,y);

for i =1:length(x)
    for j = 1:length(y)
        [U(i,j), V(i,j)] = conformMap(X(i,j),Y(i,j));
    end
end

% [U,V] = meshgrid(u,v);
% F1 = (X.^2 + Y.^2).^1/2;
F = zeros(length(x),length(x));
% Ff = (U.^2 + V.^2).^1/2;

figure(1)
surf(U,V,F)
hold off

figure(2)
surf(U,V,F)
% set(gca, "Visible", 'off');
% set(gcf, "color", 'white');
% set(gca, "color", 'none');
% set(gca, 'position', [0 0 1 1]);
% set(gcf, 'InvertHardcopy', 'off');
% set(gca, 'Units', 'normalized', "Position", [0 0 1 1]);
% set(gca, 'xlim', [-50 50], "ylim", [-50 50], "zLim", [-1 1]);
% set(gca, "view", [0 90]);
% set(gca, "DataAspectRatio", [1 1 0.5]);
set(surf(U,V,F), "CData", imag, "FaceColor", "texturemap", "edgeColor", "none");

hold off

