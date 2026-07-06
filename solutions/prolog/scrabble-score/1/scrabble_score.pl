score(Word, Score) :-
    string_upper(Word, UpperWord),
    string_chars(UpperWord, Letters),
    score_letters(Letters, Score).

score_letters([], 0).

score_letters([Head|Tail], Value) :-
    letter_score(Head, HeadValue),
    score_letters(Tail, TailValue),
    Value is HeadValue + TailValue.

letter_score(Letter, 1) :-
    member(Letter, ['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T']).

letter_score(Letter, 2) :-
    member(Letter, ['D', 'G']).

letter_score(Letter, 3) :-
    member(Letter, ['B', 'C', 'M', 'P']).

letter_score(Letter, 4) :-
    member(Letter, ['F', 'H', 'V', 'W', 'Y']).

letter_score('K', 5).

letter_score(Letter, 8) :-
    member(Letter, ['J', 'X']).

letter_score(Letter, 10) :-
    member(Letter, ['Q', 'Z']).