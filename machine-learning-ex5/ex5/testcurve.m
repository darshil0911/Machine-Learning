##function [error_train, error_val] = ...
##    TestCurve(Xtest, ytest,X,y)
 
lambda = 3; 
theta = trainLinearReg(X_poly, y,lambda);
error_test = linearRegCostFunction(X_poly_test, ytest, theta,0);
fprintf("Test Error is %f\n",error_test);