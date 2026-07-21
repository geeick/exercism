color_value("black", 0).
color_value("brown", 1).
color_value("red", 2).
color_value("orange", 3).
color_value("yellow", 4).
color_value("green", 5).
color_value("blue", 6).
color_value("violet", 7).
color_value("grey", 8).
color_value("white", 9).

value([Color1, Color2 | _], Value) :-
    color_value(Color1, Value1),
    color_value(Color2, Value2),
    Value is Value1 * 10 + Value2.