% plot_cosecant.m
% Plot of cosecant function from -pi to pi (split at singularity)

% Setup
x1_left = -pi:0.01:-0.01;     % Left side of 0
x1_right = 0.01:0.01:pi;      % Right side of 0

% Compute y values
y1_left = csc(x1_left);
y1_right = csc(x1_right);

% Create plot
figure('Color', 'w'); % Set background to white
plot(x1_left, y1_left, 'k', 'LineWidth', 2); hold on;
plot(x1_right, y1_right, 'k', 'LineWidth', 2);
grid on;

% Title and labels
title('cosecant function', 'FontName', 'Times New Roman', 'FontSize', 20);
xlabel('angle (in radians)', 'FontSize', 14);
ylabel('csc(x)', 'FontSize', 14);

% Axes
xlim([-pi pi]);
ylim([-10 10]);
set(gca, 'FontSize', 12);

% Set custom ticks and labels
xticks(-3:0.25:3);
x_labels = strings(size(-3:0.25:3));
tick_vals = -3:0.25:3;
for i = 1:length(tick_vals)
    if mod(tick_vals(i), 0.5) == 0
        x_labels(i) = num2str(tick_vals(i));
    else
        x_labels(i) = '';
    end
end
xticklabels(x_labels);
