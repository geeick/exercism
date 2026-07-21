anagram(Word, Candidates, Anagrams):-
    findall(
        Candidate,
        (
            member(Candidate, Candidates),
            one_anagram(Word, Candidate)
        ),
        Anagrams
    ).

one_anagram(Word1, Word2):-
    string_lower(Word1, Word1_Lower),
    string_lower(Word2, Word2_Lower),
    
    Word1_Lower \= Word2_Lower,

    string_chars(Word1_Lower, Chars1),
    string_chars(Word2_Lower, Chars2),
    
    msort(Chars1, Sorted),
    msort(Chars2, Sorted).