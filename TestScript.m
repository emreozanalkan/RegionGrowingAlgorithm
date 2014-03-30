close all; clear all; clc;

 image = imread('Resources/images/3096.jpg');
 %image = imread('Resources/images/28075.jpg');
% image = imread('Resources/images/113016.jpg');

% neighborhoodType = 4; % 4-point connectivity
neighborhoodType = 8; % 8-point connectivty


tic;
segmentedImage = RegionGrowingSegmentation(image, neighborhoodType);
display('Segmentation time:');
toc;
