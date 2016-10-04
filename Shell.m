%BME 370 Redesign Project
%Team 9
%MoleScope

%Project Script


%% Load Images

%User input files
%Load files
I = imread('image5.gif');

%% Assess each image

%For each image:
%Border Detection
[b, I_b] = BorderDetection(I);
%Calc Size
%Calc Assymetry
%Calc Color Variation


%% Time-Lapse

%Compare values from image to image
%Create size contour map

