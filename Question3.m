% Calculating covariance

c = cov(x, y)       % buit in function on matlab to 
                    % calculate the covariance

                        
% Calcuating the correlation coefficient

rho = corrcoef(x, y)   % buit in function on matlab to 
                        % calculate the correlation coefficient

% ****** Plotting the data ( scatter plot ) ******

scatter (x,y,'b');           % creates the plot

% ******* plot a best fit line ******

h = lsline;                 % draws best fit line
set(h(1),'color','r','LineWidth',2) % setting best fit line as red
xlabel('x');            % labels x axis
ylabel('y');            % labels y axis
legend('Sample Data', 'Best Fit Line'); % labels legends
