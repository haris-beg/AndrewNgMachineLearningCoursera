function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
onesMatrix = ones(1,m);
theta0 = theta(1,1);
theta1 = theta(2,1);
xValues = transpose(X(:,2)); % get only x values in an (mx1) vector

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
	
	h = X * theta; % prediction
	delta = h - y; % difference between prediction and training set data
	sumOfDeltas = onesMatrix * delta;
	theta0 = theta0 - (alpha / m) * sumOfDeltas;
	sumOfDeltaMultiples = xValues * delta;
	theta1 = theta1 - (alpha / m) * sumOfDeltaMultiples;
	
	% Update theta vector with new values
	theta(1,1) = theta0;
	theta(2,1) = theta1;
	







    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
