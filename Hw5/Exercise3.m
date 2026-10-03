syms s 
H = simplifyFraction(2*(s+3)*(s+10)/((s+4)*(s+5)))
[num,den] = numden(H)
sym2poly(den)
disp(num)
sym2poly(den)