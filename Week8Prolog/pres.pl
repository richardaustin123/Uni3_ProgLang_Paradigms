
% Set the variable Name to "Richard" and assert it

set_name :-
    Name = "Richard",
    assert(name(Name)),
    write('Name set to: '), write(Name), nl.

say_hello_to_richard :-
    name("Richard"),
    write('Hello Richard!'), nl.

say_hello_to_richard :-
    write('Sorry, I don\'t know you.'), nl.

