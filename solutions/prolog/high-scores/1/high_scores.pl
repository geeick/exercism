latest(Scores, Latest):-
    last(Scores, Latest).

personal_best([OnlyScore], OnlyScore).

personal_best([ScoresHead | ScoresTail], Best):-
    personal_best(ScoresTail, TailElement),
    Best is max(ScoresHead, TailElement).
    
personal_top_three(Scores, TopThree):-
    msort(Scores, Sorted),
    reverse(Sorted, Descending),
      take_three(Descending, TopThree).

take_three([], []).
take_three([A], [A]).
take_three([A, B], [A, B]).
take_three([A, B, C | _], [A, B, C]).