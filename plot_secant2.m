% plot_secant.m
% Plot of secant function from 0° to 360°

% Setup
x2 = 0:0.1:360;
y2 = secd(x2);

% Handle singularities at 90° and 270°
y2(abs(mod(x2 - 90, 180)) < eps) = NaN;

% Create plot
figure('Color', 'w'); % Set background to white
plot(x2, y2, 'k', 'LineWidth', 2); % Black line, 2 pt wide
grid on;

% Title and labels
title('secant function', 'FontName', 'Times New Roman', 'FontSize', 20);
xlabel('angle (in degrees)', 'FontSize', 14);
ylabel('sec(x)', 'FontSize', 14);

% Axes
xlim([0 360]);
ylim([-10 10]);
set(gca, 'FontSize', 12);

% Set custom ticks and labels
xticks(0:10:360);
x_labels = strings(size(0:10:360));
tick_vals = 0:10:360;
for i = 1:length(tick_vals)
    if mod(tick_vals(i), 30) == 0
        x_labels(i) = num2str(tick_vals(i));
    else
        x_labels(i) = '';
    end
end
xticklabels(x_labels);
