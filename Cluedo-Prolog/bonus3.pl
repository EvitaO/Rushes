	/*4 persons have traveled in the past months.
	They traveled in march/april/may/june and went to London/Tokyo/Sydney/Rio de Janeiro.
	Find out who went where and in which month.
	1. Neither Amanda nor Jack traveled in may.
	2. Mike didn't travel to Rio de Janeiro.
	3. Rachel traveled in april.
	4. Amanda visited London.
	5. Neither Mike nor Rachel traveled to Tokyo.
	6. A man traveled in june.*/

travel :-
length(X, 4),
member([_, _, march], X),
member([_, _, april], X),
member([_, _, may], X),
member([_, _, june], X),
member([rachel, _, april], X),
member([amanda, london, _], X),
member([jack, _, _], X),
member([mike, _, _], X),
member([M, _, june], X), M \== rachel, M \== amanda,
member([J, tokyo, _], X), J \== mike, J \== rachel,
member([R, rio_de_janeiro, _], X), R \== mike,
member([Z, _, may], X), Z \== amanda, Z \== jack,
member([_, sydney, _], X),
member([_, _, march], X),
write(X),
nl, !.
