sum_of_squares(0, 0).

sum_of_squares(N, Result) :-
    N > 0,
    Previous is N - 1,
    sum_of_squares(Previous, PreviousResult),
    Result is N * N + PreviousResult.

sum_to(0, 0).

sum_to(N, Result) :-
    N > 0,
    Previous is N - 1,
    sum_to(Previous, PreviousResult),
    Result is N + PreviousResult.

square_of_sum(N, Result) :-
    sum_to(N, Sum),
    Result is Sum * Sum.

difference(N, Result) :-
    square_of_sum(N, SquareSums),
    sum_of_squares(N, SumSquares),
    Result is SquareSums - SumSquares.