close all; clear all; clc;

planeImage = imread('Resources/images/3096.jpg');

% neighborhoodType = 4; % 4-point connectivity
neighborhoodType = 8; % 8-point connectivty


tic;
segmentedImage = RegionGrowingSegmentation(planeImage, neighborhoodType);
display('Segmentation time:');
toc;
