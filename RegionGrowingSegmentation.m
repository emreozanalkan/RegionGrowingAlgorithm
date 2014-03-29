function [ segmentedImage ] = RegionGrowingSegmentation( image, neighborhood )
%REGIONGROWINGSEGMENTATION Region Growing algorithm for segmenting an image
%   partition of an image into a set of non-overlapped regions whose union is the entire image
%
% image: Color or grayscale image
%
% neighborhood: 4 or 8 neighbor pixel connectivity. Default set to 8.
%

% If neighborhood is not given, we set it to 8
if nargin < 2
    neighborhood = 8;
end

% Getting size of the image
[rows cols channel] = size(image);

% Same size as image, we mark visited pixels
visitedMatrix = zeros(rows, cols);

% Same size as image, we mark region labels
regionMatrix = zeros(rows, cols);

% Region Label Counter
currentRegionLabel = 1;

imageGray = image;

% If image is color image, we convert it to grayscale
if channel > 1
    imageGray = rgb2gray(image);
end

% We decided to find seeds in histogram peaks

% We get histogram of the image
[counts, x] = imhist(imageGray);

% We find peak points of histogram with threshold 100
[maxPeaks, ~] = peakdet(counts, 100, x);

% Peaks are sorted according to most frequent ones in descending order
maxPeaksSorted = sortrows(maxPeaks, -2);

% We get value column, removing frequency column
maxPeaksSorted = maxPeaksSorted(1);

% mostFrequentPeakValue = maxPeaksSorted(1, 1);
% 
% display(maxPeaksSorted);
% 
% display(maxPeaksSorted(1, 1));
% 
% % We find our first seed by first index in grayscale
% % image with the value of the histogram peak
% [seedRow, seedCol] = find(imageGray == mostFrequentPeakValue, 1);


% Loop while there is no unlabeled region in region matrix
while(~isempty(find(regionMatrix == 0)))

% Getting unlabled seed in image
[seedRow, seedCol] = FindSeed(imageGray, regionMatrix, maxPeaksSorted);
    
    
end


















segmentedImage = 0;

end

