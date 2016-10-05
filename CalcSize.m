function [Area] = CalcSize(~, ImageBorder )
%Code by Thomas Leahy
Area = sum(sum(ImageBorder));
end

