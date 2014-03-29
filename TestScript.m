close all; clear all; clc;

image = imread('Resources/images/3096.jpg');

% neighborhoodType = 4; % 4-point connectivity
neighborhoodType = 4; % 8-point connectivty


tic;
segmentedImage = RegionGrowingSegmentation(image, neighborhoodType);
display('Segmentation time:');
toc;
