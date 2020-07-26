	/*Instruments
	Four girls are playing a instrument. 
	Figure out which instrument each one is playing and what there age is. 
	1. Ariella is learning about the accordion.
 	2. Stella is not playing the ukulele.
 	3. Kallie is 6 years old.
 	4. The 7 years old girl is learning about the oboe.
	5. Valeria is not 9 years old.
	6. The xylophone is played by the 6year old.
	7. Some one is 8 years old. */

instruments :-
length(Answer, 4),
member([_, _, _], Answer),
member([_, _, _], Answer),
member([_, _, _], Answer),
member([_, _, _], Answer),
member([ariella, accordion, _], Answer),
member([stella, X, _], Answer), X \== ukulele,
member([kallie, _, 6], Answer),
member([_, oboe, 7], Answer),
member([Y, _, 9], Answer), Y \== valeria,
member([valeria, _, _], Answer),
member([_, xylophone, 6], Answer),
member([_, ukulele, _], Answer),
member([_, _, 8], Answer),
write(Answer), nl, !.
