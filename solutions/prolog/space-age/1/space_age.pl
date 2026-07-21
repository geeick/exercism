space_age(Planet, AgeSec, Years) :-
    string_lower(Planet, LowerPlanet),
    atom_string(PlanetAtom, LowerPlanet),
    period(PlanetAtom, Period),
    Years is AgeSec / 31557600 / Period.

period(mercury, 0.2408467).
period(venus, 0.61519726).
period(earth, 1.0).
period(mars, 1.8808158).
period(jupiter, 11.862615).
period(saturn, 29.447498).
period(uranus, 84.016846).
period(neptune, 164.79132).

space_age(Planet, AgeSec, Years) :-
    period(Planet, Period),
    RawYears is AgeSec / 31557600 / Period,
    Years is round(RawYears * 100) / 100.
