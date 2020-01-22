function y_pred = lwlr(X_train, y_train, x, tau)
    lambda = 1e-4;    
    [m, n] = size(X_train);

    % Find w
    norm = sum((X_train - x') .^2, 2);
    norm = sqrt(norm);
    w = exp( -norm/ (2 * tau));
    % w = exp( -norm/ (2 * tau^2));
    
    
    theta = zeros(n, 1);
    theta_old = ones(n, 1);
    sigmoid = @(X, theta) 1./ (1 + exp(-X * theta));
    norma2 = @ (v1, v2)  sqrt (sum(((v1 - v2) .^2),2)) ; 
    while ( norma2(theta, theta_old) > 1e-6)
        h_theta = sigmoid(X_train, theta);
        z = w .* (y_train - h_theta);
        grad_l = X_train' *  z - lambda * theta;
        D = -diag(w .* h_theta .* (1 - h_theta));
        H = X_train' * D * X_train - lambda * eye(n);
        theta_old = theta;
        theta = theta - H \ grad_l;
    end
%     prob = sigmoid(x', theta);
%     y_pred = prob > .5;
    y_pred = (x' * theta > 0);
end