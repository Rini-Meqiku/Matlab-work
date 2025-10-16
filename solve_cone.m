function [S, B, C, A, V] = solve_cone(R, H)


    S = sqrt(R.^2 + H.^2);        % Slant height
    B = pi * R.^2;                % Base area
    C = pi * R .* S;              % Lateral surface area
    A = B + C;                    % Total surface area
    V = (1/3) * pi * R.^2 * H;    % Volume
end
