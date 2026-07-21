
leap(X) :- 
    div_by_four(X),
    div_by_400(X).

leap(X) :- 
    div_by_four(X),
    not_div_by_100(X).

div_by_four(X) :-
    X mod 4 =:= 0.

not_div_by_100(X) :-
    X mod 100 =\= 0.

div_by_400(X) :-
    X mod 400 =:= 0.