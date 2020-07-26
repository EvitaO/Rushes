woman(W) :- member(W, [anne, betty, lisa, sylvie, eve, julie, valerie]).
man(M) :- member(M, [marc, luc, jean, jules, leon, loic, gerard, jacques, herve, paul]).

husband_of(M, W) :- member((M, W), [(marc, anne), (luc, betty), (jules, lisa), (leon, sylvie), (loic, eve), (paul, julie)]).
wife_of(W, M) :- member((W, M), [(anne, marc), (betty, luc), (lisa, jules), (sylvie, leon), (eve, loic), (julie, paul)]). 

child_of(C, P) :- member((C, P), [(jean, marc), (jules, marc), (leon, marc), (jean, anne), (jules, anne), (leon, anne), 
(jacques, jules), (jacques, lisa), (lisa, luc), (loic, luc), (gerard, luc), (lisa, betty), (loic, betty), (gerard, betty), (herve, leon), (julie, leon), (herve, sylvie), (julie, sylvie), (paul, loic), (valerie, loic), (paul, eve), (valerie, eve)]).
	 
father_in_law_of(X, Y) :- member((X, Y), [(marc, lisa), (marc, sylvie), (luc, jules), (luc, eve), (leon, paul), (loic, julie)]).
mother_in_law_of(X, Y) :- member((X, Y), [(anne, lisa), (anne, sylvie), (betty, jules), (betty, eve), (sylvie, paul), (eve, julie)]).

ancestor_of(A, B) :- child_of(B, A).
ancestor_of(A, B) :- child_of(C, A), ancestor_of(C, B).
