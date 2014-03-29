function [ seedRow, seedCol ] = FindSeed( imageGray, regionMatrix, maxPeaksSorted )
%GETSEED Summary of this function goes here
%   Detailed explanation goes here

% % [seedRow, seedCol] = find(imageGray == mostFrequentPeakValue, 1);

for ii = 1 : numel(maxPeaksSorted)
    
    [seedRows, seedCols] = find(imageGray == mostFrequentPeakValue);
    
    
end


end

