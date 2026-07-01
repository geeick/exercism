reverse_list([], []).

reverse_list([Head | Tail], Reversed) :-
    reverse_list(Tail, ReversedTail),
    append(ReversedTail, [Head], Reversed).

string_reverse(String, ReversedString) :-
    string_chars(String, Chars),
    reverse_list(Chars, ReversedChars),
    string_chars(ReversedString, ReversedChars).