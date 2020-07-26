change(west, east).
change(east, west).

move([X, X, Goat, Cabbage], wolf,[Y, Y, Goat, Cabbage]) :- change(X, Y).
move([X, Wolf, X, Cabbage], goat,[Y, Wolf, Y, Cabbage]) :- change(X, Y).
move([X, Wolf, Goat, X], cabbage,[Y, Wolf, Goat, Y]) :- change(X, Y).
move([X, Wolf, Goat, Cabbage], nothing,[Y, Wolf, Goat, Cabbage]) :- change(X, Y).

check(X,X,_).
check(X,_,X).

safe([Man, Wolf, Goat, Cabbage]) :- 
check(Man, Goat, Wolf), 
check(Man, Goat, Cabbage).

solution([west, west, west, west],[]).
solution(Config, [FirstMove|OtherMoves]) :-
move(Config, FirstMove, NextConfig),
safe(NextConfig),
solution(NextConfig, OtherMoves).

solve :- 
length(X,7),
setof(a, solution([east, east, east, east],X), _),
write(X), 
nl, !.
