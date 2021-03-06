function [ output_args ] = CalcColorVariation( BorderXY, ImageBorder)
%Code by Laura Kenyon

clc;
 %images2 = uigetdir('C:\', 'Select a folder of images you want to process!');
% load images2
% figure 
% image(X)
% colormap(map)

colormap copper

subplot(3,2, 1)
A = imread('image1.gif');
imagesc(A)

% subplot(2,3, 2)
% B = imread('image2.gif');
% imagesc(B)
% 
% subplot(2,3,3)
% C = imread('image3.gif');
% imagesc(C)
% 
% subplot(2,3, 4)
% D = imread('image4.gif');
% imagesc(D)

subplot(3,2, 2)
E =imread('colored_lesion1.gif');
imagesc(E)

subplot(3,2,3)
imshowpair(A,E, 'falsecolor')

subplot(3,2,4)
imshowpair(A,E, 'blend')

subplot(3,2,5)
imshowpair(A,E, 'diff')

subplot(3,2,6)
imshowpair(A,E, 'montage')

ssim(A,E)

ssim(A,A)
% subplot(2,2,1)
% F= imread('color_lesion2.gif');
% imagesc(F)
% 
% subplot(2,2,2)
% G= imread('color_lesion3.gif');
% imagesc(G)
% 
% subplot(2,2,3)
% imshowpair(F,G, 'diff')



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

