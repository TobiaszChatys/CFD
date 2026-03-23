%% Setup
clear; clc; close all;

%% loading

data02 = readmatrix('cp_y02case01_upper.csv');
data09 = readmatrix('cp_y09case01_upper.csv');

Cp = data02(:, 1);
x = data02(:, 2);

x_leading_edge = min(x);
x_trailing_edge = max(x);

c = x_trailing_edge - x_leading_edge;

%% Non-Dimensionalise

xi = (x - x_leading_edge)/ c;
