function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.




H = X * theta; % multiply (mx2) matrix X with (2x1) vector theta, giving a (mx1) vector H
delta = H - y; 
deltaSquared = delta .^ 2;
onesMatrix = ones(1,m);
sumOfSquaredErrors = onesMatrix * deltaSquared;
J = sumOfSquaredErrors/(2*m);

% print cost to screen
fprintf('Cost computed: ');
fprintf('%f \n', J);

% =========================================================================

end
