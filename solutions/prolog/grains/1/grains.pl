square(1, 1).

square(SquareNumber, Value) :-
    SquareNumber > 1,
    SquareNumber =< 64,
    PreviousSquare is SquareNumber - 1,
    square(PreviousSquare, PreviousValue),
    Value is PreviousValue * 2.

total(Value) :-
    total_from(1, 64, Value).

total_from(Beginning, Beginning, Result) :-
    square(Beginning, Result).

total_from(Beginning, End, Result) :-
    End > Beginning,
    OneBefore is End - 1,
    square(End, SquareValue),
    total_from(Beginning, OneBefore, RestValue),
    Result is SquareValue + RestValue.