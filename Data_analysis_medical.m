cancer = readtable('data.csv');
whos("cancer")
X = cancer(:,1:30);
Y = cancer(:,31);
figure
xlabel("Mean Radius");
ylabel('Mean Smothness');
title('Mean Radius vs Mean Smoothness')
Scatter(X(:,4), X(:,5),[ ], Y);

net= patternnet([10,8,5]);
view(net)
[net, tr] = train(net, X',Y');
