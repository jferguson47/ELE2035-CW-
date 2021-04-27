x_bar = mean(y)   % Calculating the mean of the sample given in y

alpha = 0.05        %  The significance level which is 
                    %  compared with the p_value

n =length(y)             % determining the length of the sample 

mu_0 = 0                % setting the mean of the 
                        % standard normal distribution
sigma = 2               % setting the S.D of the 
                        % standard normal distribution 

sigma_x_bar = sigma / sqrt(n)    % calculating sigma_x_bar

z_0 = (x_bar - mu_0)/ sigma_x_bar     % calculating the test statistic

p_value = normcdf(z_0,mu_0,2)     % calculating the p value


if(p_value>alpha/2 && p_value<1-alpha/2)    % comparing the p value with 
                                            % the alpha in order to accept 
                                            % or reject the null hypothesis 

        disp('Accept the null hypothesis')
else
    disp('Reject the null hypothesis')
end
