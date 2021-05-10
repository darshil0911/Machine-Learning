function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
sumi = 0;
for i=2:size(theta,1);
  sumi = sumi + theta(i)^2;
end
J = ((1/(2*m)).*sum((theta'*X'-y').^2)) + ((lambda/(2*m))*sumi);
grad = zeros(size(theta));
#grad(1) = sum((theta(1,1)*X(1,:)-y(1,:))*X(1,1))/m;
for i = 2:max(size(theta))
  grad(1,1) = (1/m).*sum(X(:,1)'*((X*theta)-y));
  grad(i,1) = ((1/m).*sum(X(:,i)'*((X*theta)-y))) + ((lambda/m).*theta(i,1));
end
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%












% =========================================================================

grad = grad(:);

end
