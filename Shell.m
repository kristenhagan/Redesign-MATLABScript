%BME 370 Redesign Project
%Team 9
%MoleScope

%Project Script
clc; clear all; close all;

%% Load Images

%User input files

folder_name = uigetdir('C:\Users\thoma_000\OneDrive\Documents\BME 370\Redesign-MATLABScript\Images', 'Select a folder of images you want to process!');
cd(folder_name);

%Load files
files = dir(folder_name);
fileIndex = find(~[files.isdir]);

%Get rid of bogus files - idk why these are there
x = 1;
for i = 1:length(files)
    if files(i).bytes ~= 0
        theseFiles(x) = files(i);
        x = x + 1;
    end
end
files = theseFiles;


%% Assess each image

%For each image:
for i = 1:length(files)
    %Load Image
    Image = imread(files(i).name);
    
    %Border Detection
    [BorderXY, ImageBorder] = BorderDetection(Image);
    BorderXY = BorderXY{1};
    BorderXY = [BorderXY(:,2) BorderXY(:,1)]; %Making it XY points
    
    %Calc Size
    Area =  CalcSize(BorderXY, ImageBorder);
    
    %Calc Assymetry
    Assymetry = CalcAssymetry(BorderXY, ImageBorder, Area);
    
    %Calc Color Variation
%    ColorVariation = CalcColorVariation(BorderXY, ImageBorder);
end

%% Time-Lapse

%Compare values from image to image
%Create size contour map

