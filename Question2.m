m = mean(x)       % working out mean using bulit in function

v = var(x)        % working out varinace using bulit in function

r = iqr(x)       % calculating the interquartile range of x

s = skewness(x)   % calculating the coefficient skewness of x

k = kurtosis(x)   % calculating the coefficient of kutosis of x


% ***** For Your Information *****

% finding mean and variance not using bultin function

sumof_1 = 0;
for i=1:length(x)
  sumof_1 = sumof_1+x(i);
end
M = sumof_1 / length(x) % the mean


sumof_2 = 0;
for i=1:length(x)
    sumof_2 = sumof_2 + (x(i)-M)^2;
end
V = sumof_2 / length(x)            %Varaince

% finding the numerator and denominator for  Yˆ1

num_y1 = (1/length(x))*sum((x-m).^3);
denom_y1 = (1/length(x))*sum((x-m).^2);

skw = num_y1 / denom_y1^(3/2)    % Calculating the coefficent of skewness


% finding the numerator and denominator for  Yˆ2

num_y2 = (1/length(x))*sum((x-m).^4);
denom_y2 = (1/length(x))*sum((x-m).^2);

kur = num_y2 / denom_y2^2       % Calculating the coefficent of Kurtosis
