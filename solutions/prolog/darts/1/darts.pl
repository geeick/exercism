score(X, Y, 0):-
    radius(X,Y,Radius),
    Radius > 10.

score(X, Y, 1):-
    radius(X,Y,Radius),
    Radius > 5,
    Radius =< 10.

score(X, Y, 5):-
    radius(X,Y,Radius),
    Radius > 1,
    Radius =< 5.

score(X, Y, 10):-
    radius(X,Y,Radius),
    Radius =< 1.

radius(X, Y, Radius):-
    Radius is sqrt(X**2 + Y**2).

