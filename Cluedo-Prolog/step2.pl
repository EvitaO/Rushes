neighbours(A, B, [A,B|_]).
neighbours(A, B, [_|T]) :- neighbours(A, B, T).
nextto(A, B, C) :- neighbours(B, A, C); neighbours(A, B, C).

solution(Houses) :- length(Houses, 5),
member([_, _, _, _, _, 1], Houses),
member([_, _, _, _, _, 2], Houses),
member([_, _, _, _, _, 3], Houses),
member([_, _, _, _, _, 4], Houses),
member([_, _, _, _, _, 5], Houses),
member([englishman, red, _, _, _, _],Houses),
member([swede, _, _, _, dogs, _], Houses),
member([dane, _, tea, _, _, _], Houses),
member([_, green, coffee, _, _, _], Houses),
member([_, _, _, pall_mall, birds, _], Houses),
member([_, yellow, _, dunhill, _, _], Houses),
member([_, _, milk, _, _, 3], Houses),
member([norwegian, _, _, _, _, 1], Houses),
member([_, _, beer, blue_master, _, _], Houses),
member([german, _, _, prince, _, _], Houses),
neighbours([_, green, _, _, _, _], [_, white, _, _, _, _], Houses),
nextto([_, _, _, blend, _, _], [_, _, _, _, cats, _], Houses),
nextto([_, _, _, _, horse, _], [_, _, _, dunhill, _, _], Houses),
nextto([_, _, water, _, _, _], [_, _, _, blend, _, _], Houses),
nextto([norwegian, _, _, _, _, _], [_, blue, _, _, _, _], Houses).

who_has_a_fish(N) :- solution(Houses), member([N, _, _, _, fish, _], Houses), write(Houses), nl, !.
