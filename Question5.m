% ****** generate 10,000 realisations *******

n = 10000;  % 10000 Random values


X = randn(1,n);         % generating 10000 standard normal RVs called X
Y = randn(1,n);         % generating 10000 standard normal RVs called Y
R = sqrt(X.^2+Y.^2);    % creating another RV called R 
                        % which comes from X and Y

                        
% ****** Plotting the ECDF ******

% Using MATLAB's Bulit in function for ECDF
[f, d] = ecdf(R);   
plot(d,f, '.');         % plotting the ECDF
hold on;                % don't plot figure yet wait
xlabel('x');                        % Label x axis
ylabel('Cumulative Probability')    % Label y axis

% ******* Plotting the theoretical CDF *******

% Using the MNLE to estimate the population parmeters
mu_hat = sum(R) / n;    % calculating Mu hat
R_bar = mean(R)         % calculating R bar
sigma_hat = sqrt(sum((R - R_bar).^2) / n);  % calculting sigma hat
% Plot the theortetical normal CDF using our estimates

p = normcdf(d, mu_hat, sigma_hat);  % builtin function to plot data

plot(d,p, 'm'); % plotting data on same graph as before
hold on;        % wait
legend('Empirical CDF', 'Theoretical CDF'); % adding legend to graph
