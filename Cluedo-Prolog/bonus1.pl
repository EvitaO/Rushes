	/*Thursday Party From
	Four ladies meet each week on Thursday to play bridge.
	On each meeting they decide what everyone has to bring for the next meeting.
	1. Mrs. Andrew will  bring chocolate cake.
	2. Neither Mrs. Brown, nor Vivien, nor Ann Clark will bring cookies.
	3. Rachel, which is not from Davidson's family, will bring coffee.
	4. Mary will not bring the wine.
	Find the whole name of each lady and what is she supposed to bring next week?*/

	who_brings_what(Answer) :-
	length(Answer, 4),
	member([_, _, wine], Answer),
	member([_, _, cookies], Answer),
	member([_, _, chocolate_cake], Answer),
	member([_, _, coffee], Answer),
	member([_, andrew, chocolate_cake], Answer),
	member([rachel, X, coffee], Answer), X \== davidson,
	member([mary, _, W], Answer), W \== wine,
	member([_,brown, Cb], Answer), Cb \== cookies,
	member([vivien, _, Cv], Answer), Cv \== cookies,
	member([ann, clark, Cc], Answer), Cc \== cookies,
	member([_, davidson, _], Answer),
	write(Answer), nl, !.
