%% Setup
clear; clc; close all;

%% loading

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
plot(xi, Cp_CFD02, 'Marker', 'o', 'DisplayName', 'CFD', ...
  'MarkerSize', 10, 'LineStyle', 'none', 'LineWidth', 2);
hold on;
plot(x_Experimental02, Cp_Experimental02,'Marker', 's', 'DisplayName', ...
  'Experimental', 'MarkerSize', 10, 'LineStyle', 'none', 'LineWidth', 2);
xlabel('$x/c$', 'FontSize', 20, 'Interpreter', 'latex');
ylabel('$C_p$', 'FontSize', 20, 'Interpreter', 'latex');
grid on;
set(gca, 'FontSize', 20, 'TickLabelInterpreter', 'latex', 'linewidth', 1)
legend('Location', 'best', 'FontSize', 20, 'Interpreter', 'latex');
