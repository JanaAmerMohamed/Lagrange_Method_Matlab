% Define the given data points
x = [2, 5.5, 11];
y = [5.3, 9.9, 10.2];

% Define the Lagrange basis polynomials
L0 = @(x_val) (x_val - x(2)).*(x_val - x(3)) / ((x(1) - x(2)) * (x(1) - x(3)));
L1 = @(x_val) (x_val - x(1)).*(x_val - x(3)) / ((x(2) - x(1)) * (x(2) - x(3)));
L2 = @(x_val) (x_val - x(1)).*(x_val - x(2)) / ((x(3) - x(1)) * (x(3) - x(2)));

% Define the Lagrange interpolating polynomial
P = @(x_val) y(1)*L0(x_val) + y(2)*L1(x_val) + y(3)*L2(x_val);

% Evaluate the interpolating polynomial at x = 8
result = P(8);
disp(['The result when x = 8 is ', num2str(result)]);

