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

currentRegionLabel = 1;

imageGray = image;

if channel > 1
    imageGray = rgb2gray(image);
end

[counts, x] = imhist(imageGray);
[maxPeaks, ~] = peakdet(counts, 100, x);

maxPeaksSorted = sortrows(maxPeaks, -2);

display(maxPeaksSorted);






segmentedImage = 0;

end

