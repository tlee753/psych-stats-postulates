function nbaHistogram()
data = csvread('sportsAnalysisv1.csv', 1, 2);
points = data(1:271, 2);
rebounds = data(1:271, 15);
assists = data(1:271, 16);

score = points + rebounds * 1.78 + assists * 2.333;
taken = data(1:271, 5);

close all;
figure;
histogram(score);
title('NBA Proprietary Score Histogram');
xlabel('Proprietary Score');
ylabel('Frequency');

figure;
plot(taken, score, 'ko');
title('Proprietary Score vs Shots Taken');
xlabel('Shots Taken');
ylabel('Proprietary Score');

end