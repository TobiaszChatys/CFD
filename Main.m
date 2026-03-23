%% Setup
clear; clc; close all;

%% loading

CFD02 = readmatrix('cp_y02case01_upper.csv');
Experimental02 = readmatrix('cp_y02experimental_upper.csv');

x_CFD = CFD02(:, 1);
x_Experimental = Experimental02(:, 1);

Cp_CFD = CFD02(:, 2);
Cp_Experimental = -Experimental02(:,2);

x_leading_edge = min(x_CFD);
x_trailing_edge = max(x_CFD);

c_CFD = x_trailing_edge - x_leading_edge;

%% Non-Dimensionalise

xi = (x_CFD - x_leading_edge)/ c_CFD;

figure,
plot(xi, Cp_CFD, 'Marker', 'o');
hold on;
plot(x_Experimental, Cp_Experimental,'Marker', 's');
