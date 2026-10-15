two_fer(Name, Dialogue):-
    atomics_to_string(["One for ", Name, ", one for me."], Dialogue).

two_fer(Dialogue):-
    Dialogue = "One for you, one for me.".
