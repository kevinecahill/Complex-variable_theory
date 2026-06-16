clear all
close all
clc

% --- Figure Setup (Strict Landscape Book Layout) ---
figWidth = 6.0; 
figHeight = 2.5; 
figure('Units', 'inches', 'Position', [1, 1, figWidth, figHeight]);

% --- Outer Boundary Dimensions (11 Wide by 4.5 High) ---
xm_out = -5.5; 
xp_out = 5.5;
ym_out = -2.5; 
yp_out = 2.0;

x_out = xm_out:0.01:xp_out;
y_out = ym_out:0.01:yp_out;

% Plot Outer Boundary
plot(x_out, yp_out*ones(size(x_out)), 'k-', 'linewidth', 2)
hold on
plot(x_out, ym_out*ones(size(x_out)), 'k-', 'linewidth', 2)
plot(xm_out*ones(size(y_out)), y_out, 'k-', 'linewidth', 2)
plot(xp_out*ones(size(y_out)), y_out, 'k-', 'linewidth', 2)

% Set strict axis limits with uniform padding to avoid clipping lines
axis([-6.0 6.0 -3.0 2.5])
axis equal % Ensures the inner unit squares remain perfectly square

% --- Outer Boundary Contour Arrows (Plotted as stable geometric markers) ---
plot(0, ym_out, 'k>', 'MarkerFaceColor', 'k', 'MarkerSize', 8)  % Bottom wall right arrow
plot(0, yp_out, 'k<', 'MarkerFaceColor', 'k', 'MarkerSize', 8)  % Top wall left arrow
plot(xm_out, -0.25, 'kv', 'MarkerFaceColor', 'k', 'MarkerSize', 8) % Left wall down arrow
plot(xp_out, -0.25, 'k^', 'MarkerFaceColor', 'k', 'MarkerSize', 8) % Right wall up arrow

% --- Two Inner Boxes (True 1x1 Unit Squares) ---
x11 = -1.0:0.01:1.0;
y0d1 = 0.0:0.1:1.0;
y0s1 = 0.0:0.01:1.0;
y0 = 0.0; yp1 = 1.0; xm1 = -1.0; xp1 = 1.0; x0 = 0.0;

% Plot Inner Unit Squares
plot(x11, y0*ones(size(x11)), 'k-', 'linewidth', 2)
plot(x11, yp1*ones(size(x11)), 'k-', 'linewidth', 2)
plot(xm1*ones(size(y0s1)), y0s1, 'k-', 'linewidth', 2)
plot(xp1*ones(size(y0s1)), y0s1, 'k-', 'linewidth', 2)
plot(x0*ones(size(y0d1)), y0d1, 'k:', 'linewidth', 2) % Central dashed divider

% --- Completely Erase Tick Marks and Hide Background Axis ---
set(gca, 'XTick', [], 'YTick', [])
grid off
set(gca, 'visible', 'off')

% --- Inner Contour Arrows (Plotted as stable geometric markers) ---
plot(1.0, 0.5, 'k^', 'MarkerFaceColor', 'k', 'MarkerSize', 6)   % Right box right wall up
plot(-1.0, 0.5, 'kv', 'MarkerFaceColor', 'k', 'MarkerSize', 6)  % Left box left wall down
plot(-0.5, 0.0, 'k>', 'MarkerFaceColor', 'k', 'MarkerSize', 6)  % Left box bottom wall right
plot(0.5, 0.0, 'k>', 'MarkerFaceColor', 'k', 'MarkerSize', 6)   % Right box bottom wall right
plot(-0.5, 1.0, 'k<', 'MarkerFaceColor', 'k', 'MarkerSize', 6)  % Left box top wall left
plot(0.5, 1.0, 'k<', 'MarkerFaceColor', 'k', 'MarkerSize', 6)   % Right box top wall left

% --- Strict Vector Export Cropping ---
set(gcf, 'PaperUnits', 'inches');
set(gcf, 'PaperPosition', [0, 0, figWidth, figHeight]);
set(gcf, 'PaperSize', [figWidth, figHeight]);

% Clear, standard painters rendering exports
print -dpdf -painters CauchyI.pdf
print -depsc -painters CauchyI.eps
print -deps -painters /Users/kevin/papers/math/CauchyI
