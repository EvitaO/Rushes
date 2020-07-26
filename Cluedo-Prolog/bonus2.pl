/*Give us sum and transform it in coins. US coins are: 
1 Quater = 25 cents
1 Dime   = 10 cents
1 Niquel = 5 cents
1 Penny  = 1 cent
max input = 289*/

count([S, Q, D, N, P]) :-
between(0,4,P),
between(0,19,N),
between(0,9,D),
between(0,4,Q),
S is Q * 25 + D * 10 + N * 5 + P.

dinero(S) :- count([S, Q, D, N, P]),
write('Sum='), write(S), nl,	
write('Q='), write(Q), nl,
write('D='), write(D), nl,
write('N='), write(N), nl,
write('P='), write(P), nl, !.

sum :-
write('How many cents do you have?'), read(S), dinero(S).
