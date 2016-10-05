function [ Circ ] = CalcAssymetry(BorderXY, ImageBorder, Area)
%Code by Thomas Leahy
%Quanitifies the assymetry of the image
%Ideas/Algorithms taken from the following paper:
%"Determining the asymmetry of skin lesion with fuzzy borders" (See UT Box)

%% Find CIRC
Perimeter = Length(BorderXY);
Circ = (4*pi*Area)/(Perimeter^2);

%% Will's Method
%Find Centroid
xCent = mean(BorderXY(:,1));
yCent = mean(BorderXY(:,2));

%Find Major Axes
rad = 0;
for i = 1:length(BorderXY)
    xdist = BorderXY(i,1)-xCent;
    ydist = BorderXY(i,2)-yCent;
    dist = sqrt((xdist^2) + (ydist^2));
    
    %Did we find a new furthest point?
    if dist > rad
        rad = 

end

