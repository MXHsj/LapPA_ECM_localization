%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% file name: TransformPoints.m
% author: Xihan Ma
% description: apply SE(3) homogenuous transformation T on [x,y,z]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 
function [x_new,y_new,z_new] = TransformPoints(T, x, y, z)

xyz = ones(4,length(x)); 
xyz(1,:) = x; 
xyz(2,:) = y; 
xyz(3,:) = z;
xyz_new = T*xyz;
x_new = xyz_new(1,:);
y_new = xyz_new(2,:);
z_new = xyz_new(3,:);