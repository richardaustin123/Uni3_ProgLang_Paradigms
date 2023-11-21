fizzbuzz(X) :-
    0 is X mod 15,
    format('Fizzbuzz~n').

fizzbuzz(X) :-
    0 is X mod 3,
    format('Fizz~n').

fizzbuzz(X) :-
    0 is X mod 5,
    format('Buzz~n').

fizzbuzz(X) :-
    format('~w~n', [X]).

run_fizzbuzz(X, Y) :-
    X =< Y,
    fizzbuzz(X), !,
    Z is X + 1,
    run_fizzbuzz(Z, Y).

run_fizzbuzz(_,_) :- !.

:- run_fizzbuzz(1, 100).