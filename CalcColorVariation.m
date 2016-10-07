function [ output_args ] = CalcColorVariation( BorderXY, ImageBorder)
%Code by Laura Kenyon


 %images2 = uigetdir('C:\', 'Select a folder of images you want to process!');
% load images2
% figure 
% image(X)
% colormap(map)

colormap copper
colorbar 
subplot(2,3, 1)
[A,map] = imread('image1.gif');
imagesc(A)

subplot(2,3, 2)
B = imread('image2.gif');
imagesc(B)

subplot(2,3,3)
C = imread('image3.gif');
imagesc(C)

subplot(2,3, 4)
D = imread('image4.gif');
imagesc(D)

subplot(2,3, 5)
E =imread('image5.gif');
imagesc(E)

subplot(2,3,6)
F= imread('colored_lesion1.gif');
imagesc(F)



%imagesc(A)
%colorbar

%surf(peaks) %3D shaded surface plot
%colormap default
%surf(colormap)

% figure
% a=[5 5 5; 4 4 4; 5 5 5];
% cmap=colormap;
% 
% ax2 = subplot(2,1,2);
% contour(a)
% colormap(ax2,pink)

end

