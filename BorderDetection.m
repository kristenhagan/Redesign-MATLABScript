function [ bound,I_bin_filled] = BorderDetection( I )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
I_bin = imbinarize(I);
I_bin =imcomplement(I_bin);
I_bin_filled = imfill(I_bin,'holes');
B = bwboundaries(I_bin_filled);
bound = B(1);

end

