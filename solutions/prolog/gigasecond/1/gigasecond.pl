:- use_module(library(date_time)).

add_gigasecond(Date, GigasecondDate):-
    date_time_stamp(Date, StampDate),
    NewStampDate is StampDate + 1000000000,
    stamp_date_time(NewStampDate, GigasecondDate, 'UTC').
