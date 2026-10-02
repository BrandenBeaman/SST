% Exercise 1 b
numG=[1E3];
denG=[1 3 8 5 ];
numH= 0.1;
denH=1;
[num,den]= feedback(numG,denG ,numH,denH)
roots(den)
