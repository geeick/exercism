allergic_to(Score, Allergen):-
    allergy_num(Allergen, AllergenValue),
    Score /\ AllergenValue =\= 0.

allergies(Score, Allergies):-
    findall(Allergen, allergic_to(Score, Allergen), Allergies).

allergy_num(eggs, 1).
allergy_num(peanuts, 2).
allergy_num(shellfish, 4).
allergy_num(strawberries, 8).
allergy_num(tomatoes, 16).
allergy_num(chocolate, 32).
allergy_num(pollen, 64).
allergy_num(cats, 128).