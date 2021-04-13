% Let z represent the number of hours
z = 730;
alpha = 800;        % Data from Question
beta = 4.1;         % Data from Question

% Evaluating the Weilbull CDF 
% at 730 hours with the parameters

prob = wblcdf(z, alpha, beta) % function deternming 
                               % probability that the TV will
                               % fail in the first 730 hours
