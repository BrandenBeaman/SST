init();

A = [1 2 3 4]
B = [2 4 6 8]

% turns B into column
Btrans = B'

C = A.*B

Cmat = A*Btrans

Cerror = A*B

