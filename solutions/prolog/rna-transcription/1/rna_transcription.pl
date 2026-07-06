complement('G', 'C').
complement('C', 'G').
complement('T', 'A').
complement('A', 'U').

rna_transcription(Dna, Rna) :-
    string_chars(Dna, DnaChars),
    transcribe_chars(DnaChars, RnaChars),
    string_chars(Rna, RnaChars).

transcribe_chars([], []).

transcribe_chars([Head|Tail], [ResultHead|ResultTail]) :-
    complement(Head, ResultHead),
    transcribe_chars(Tail, ResultTail).