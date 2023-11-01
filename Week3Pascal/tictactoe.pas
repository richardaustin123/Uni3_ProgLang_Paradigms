program tictactoe;

uses SysUtils;

type
    playerChar = (O, X, _);

var 
    board: array[1..9] of playerChar;
    
procedure initialiseBoard();
var 
    i: integer;

begin
  for i := 1 to 9 do
    board[i] := _;
end;

procedure displayBoard();
begin 
    writeln(board[1], board[2],board[3]);
    writeln(board[4], board[5],board[6]);
    writeln(board[7], board[8],board[9]);
end;

function winner(player: playerChar) : boolean;
var 
    i: integer;
begin 
    for i := 1 to 3 do 
    begin 
        // collumns
        if ((board[i]   = player) and 
            (board[i+3] = player) and 
            (board[i+6] = player)) then
            exit(true);
        // rows
        if ((board[i * 3 - 2]   = player) and 
            (board[i * 3 - 1] = player) and 
            (board[i * 3] = player)) then
            exit(true);
        if ((board[1]   = player) and 
            (board[5] = player) and 
            (board[9] = player)) then
            exit(true);
        if ((board[3]   = player) and 
            (board[5] = player) and 
            (board[7] = player)) then
            exit(true);
    end;
end;

procedure take_turn(player : playerChar);

var
    move: string;
    moveIndex: integer;
    
begin 
    writeln('Its player ', player, 's turn');
    writeln('Enter move index (1-9)');
    readln(input, move);
    moveIndex := StrToInt(move);
    board[moveIndex] := player;
end; 

procedure game_loop();
var
    player: playerChar;
    i: integer;
begin 
    initialiseBoard();
    player := O;
    for i := 1 to 9 do 
    begin 
        displayBoard();
        take_turn(player);
        if(winner(player)) then
            begin 
                displayBoard();
                writeln('Player ', player, ' wins!');
                break;
            end;
        if (player = O) then 
            player := X
        else 
            player := O;
    end;
end;

begin 
    game_loop();
end.








