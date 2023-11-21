board([-,-,-,-,-,-,-,-,-]).
turns([o,x,o,x,o,x,o,x,o]).

% display_board(+List)
display_board([]).
display_board([H1,H2,H3|T]) :-
    write(H1), write(H2), writeln(H3),
    display_board(T).

% row_winner(+Player,+List)
row_winner(P,[P,P,P|_T]) :- !.
row_winner(P,[_H1,_H2,_H3|T]) :- row_winner(P,T), !.

% transpose_board(+List1, -List2)
transpose_board([A,B,C, D,E,F, G,H,I],[A,D,G, B,E,H, C,F,I]).

% diagWinner(+Player,+List)
diagWinner(P, [ P, _B, _C, _D,  P, _F, _G, _H,  P]) :- !.
diagWinner(P, [_A, _B,  P, _D,  P, _F, P, _H, _I]) :- !.

% winner(+Player,+List)
% ; is the 'or' operator..
winner(P,X) :-
    row_winner(P,X),! ;
    transpose_board(X,Y), row_winner(P,Y), ! ;
    diagWinner(P,X).

% update_board(+Player,+List1,-List2,+Move)
update_board(P,[_|T],[P|T],1) :- !.
update_board(P,[H1|T1],[H1|T2], Move) :-
    Move2 is Move - 1,
    update_board(P,T1,T2,Move2).

% check_win(+Player,+List,+List)
check_win(Player,Board,_Turns) :-
    winner(Player,Board),!,
    display_board(Board),
    write(Player), writeln(' wins!').

check_win(_Player,Board,Turns) :-
    game(Board,Turns).

% game(+List,+List)
game(Board,[]) :-
    display_board(Board),
    writeln('Draw!'), !.

game(Board,[Player | RemainingTurns]) :-
    display_board(Board),
    format("It's Player ~a's turn:", Player),nl,
    writeln('enter a move (1-9)'),
    read(Move),
    update_board(Player,Board,NewBoard,Move),
    check_win(Player,NewBoard,RemainingTurns).

% tictactoe
tictactoe :- 
    board(Board),
    turns(Turns),
    game(Board,Turns).

:- tictactoe.
