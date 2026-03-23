%% Setup
clear; clc; close all;

%% loading 02

CFD02 = readmatrix('cp_y02case01_upper.csv');
Experimental02 = readmatrix('cp_y02experimental_upper.csv');

x_CFD02 = CFD02(:, 1);
x_Experimental02 = Experimental02(:, 1);

Cp_CFD02 = CFD02(:, 2);
Cp_Experimental02 = -Experimental02(:,2);

x_leading_edge = min(x_CFD02);
x_trailing_edge = max(x_CFD02);

c_CFD02 = x_trailing_edge - x_leading_edge;

%% Non-Dimensionalise

xi = (x_CFD02 - x_leading_edge)/ c_CFD02;

figure,
plot(xi, Cp_CFD02, 'Marker', 'o', 'DisplayName', 'CFD (Fluent)', ...
  'MarkerSize', 10, 'LineStyle', 'none', 'LineWidth', 2);
hold on;
plot(x_Experimental02, Cp_Experimental02,'Marker', 's', 'DisplayName', ...
  'Experimental (ONERA)', 'MarkerSize', 10, 'LineStyle', 'none', 'LineWidth', 2);
xlabel('$x/c$', 'FontSize', 14, 'Interpreter', 'latex');
ylabel('$C_p$', 'FontSize', 14, 'Interpreter', 'latex');
grid on;
set(gca, 'FontSize', 20, 'TickLabelInterpreter', 'latex', 'linewidth', 1, 'YDir', 'reverse')
legend('Location', 'best', 'FontSize', 20, 'Interpreter', 'latex');
title(sprintf('Pressure Coefficent $C_p$ at Spanwise Station $y/b = 0.20$'), 'Interpreter', 'latex');
hold off;

%% Loading 09

CFD09 = readmatrix('cp_y09case01_upper.csv');
Experimental09 = readmatrix('cp_y09experimental_upper.csv');

x_CFD09 = CFD09(:, 1);
x_Experimental09 = Experimental09(:, 1);

Cp_CFD09 = CFD09(:, 2);
Cp_Experimental09 = -Experimental09(:,2);

x_leading_edge = min(x_CFD09);
x_trailing_edge = max(x_CFD09);

c_CFD09 = x_trailing_edge - x_leading_edge;

%% Non-Dimensionalise

xi = (x_CFD09 - x_leading_edge)/ c_CFD09;

figure,
plot(xi, Cp_CFD09, 'Marker', 'o', 'DisplayName', 'CFD (Fluent)', ...
  'MarkerSize', 10, 'LineStyle', 'none', 'LineWidth', 2);
hold on;
plot(x_Experimental09, Cp_Experimental09,'Marker', 's', 'DisplayName', ...
  'Experimental (ONERA)', 'MarkerSize', 10, 'LineStyle', 'none', 'LineWidth', 2);
xlabel('$x/c$', 'FontSize', 20, 'Interpreter', 'latex');
ylabel('$C_p$', 'FontSize', 20, 'Interpreter', 'latex');
grid on;
set(gca, 'FontSize', 20, 'TickLabelInterpreter', 'latex', 'linewidth', 1, 'YDir', 'reverse')
legend('Location', 'best', 'FontSize', 20, 'Interpreter', 'latex');
title(sprintf('Pressure Coefficent $C_p$ at Spanwise Station $y/b = 0.9$'), 'Interpreter', 'latex');


