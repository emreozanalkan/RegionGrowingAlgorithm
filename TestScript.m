close all; clear all; clc;

plane = imread('Resources/images/3096.jpg');

% neighborhood = 4;
neighborhood = 8;

segmentedImage = RegionGrowingSegmentation(plane, neighborhood);

