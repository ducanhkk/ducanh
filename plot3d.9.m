%ve do thi 3d
x = [-10:1:10]
y = [-10:1:10]
[X,Y] = meshgrid(x,y)
Z = X.^2 + y.^2
mesh(Z)
xlabel('Truc x')
ylabel('Truc y')
zlabel('Truc z')
title('do thi 3d')
grid on
colormap(flag)