/*There are five houses, each of a different color and inhabited by a person from a different country.  Each person owns a different pet, drinks a different beverage, and performs a different exercise.  Determine who owns the zebra and who drinks the water.
 
The person from England lives in the red house.
The person from Spain owns the dog.
Coffee is drunk in the green house.
The person from the Ukraine drinks tea.
The green house is immediately to the right (your right) of the ivory house.
The aerobic exerciser owns snails
The swimmer is in the yellow house.
Milk is drunk in the middle house.
The person from Norway lives in the first house on the left.
The person who jogs lives in the house next to the person with the fox.
The swimmer is in the house next to the house where the horse is kept.
The walker drinks orange juice.
The person from Japan lifts weights.
The person from Norway lives next to the blue house.*/

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
member([spain, _, _, _, dogs, _], Houses),
member([ukraine, _, tea, _, _, _], Houses),
member([_, green, coffee, _, _, _], Houses),
member([_, _, _, aerobic, snails, _], Houses),
member([_, yellow, _, swimmer, _, _], Houses),
member([_, _, milk, _, _, 3], Houses),
member([norwegian, _, _, _, _, 1], Houses),
member([_, _, orange_juice, walker, _, _], Houses),
member([japan, _, _, weight_lifting, _, _], Houses),
neighbours([_, white, _, _, _, _], [_, green, _, _, _, _], Houses),
nextto([_, _, _, jogs, _, _], [_, _, _, _, fox, _], Houses),
nextto([_, _, _, _, horse, _], [_, _, _, swimmer, _, _], Houses),
nextto([norwegian, _, _, _, _, _], [_, blue, _, _, _, _], Houses),
member([_, _, water, _, _, _], Houses),
member([_, _, _, _, zebra, _], Houses).

solve :- solution(Houses), write(Houses), nl, !.
