letter_distance(A, B, 0) :-
    A = B.

letter_distance(A, B, 1) :-
    A \= B.

hamming_list_distance([], [], 0).

hamming_list_distance([XHead | XTail], [ZHead | ZTail], Total ) :-
    letter_distance(XHead, ZHead, DistanceHead),
    hamming_list_distance(XTail, ZTail, DistanceTail),
    Total is DistanceHead + DistanceTail.

hamming_distance(Strand1, Strand2, Distance):-
    string_chars(Strand1, List1),
    string_chars(Strand2, List2),
    hamming_list_distance(List1, List2, Distance).