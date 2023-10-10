// Tic-tac-toe (procedural paradigm)

//  0 1 2
//  3 4 5
//  6 7 8

#include <stdio.h>

int winningCombos[8][3] =  {{0,1,2},{3,4,5},{6,7,8},
                            {0,3,6},{1,4,7},{2,5,8},
                            {0,4,8},{2,4,6}};

char board[9] = {' ',' ',' ',' ',' ',' ',' ',' ',' '};

// displayBoard()
// Display the board in ASCII
void displayBoard() {
    printf("-------\n");
    printf("|%c|%c|%c|\n",board[0],board[1],board[2]);
    printf("|%c|%c|%c|\n",board[3],board[4],board[5]);
    printf("|%c|%c|%c|\n",board[6],board[7],board[8]);
    printf("-------\n");
}

// int winner(+player)
// Check if the player has won
int winner(char player) {
    for(int i = 0; i < 8; i++)
        // If the player has their , return 1
        if(board[winningCombos[i][0]] == player &&  
           board[winningCombos[i][1]] == player && 
           board[winningCombos[i][2]] == player)
            return 1;
    return 0;
}

// takeTurn(+player)
// Ask the player for a move and update the board
void takeTurn(char player) {
    printf("it's player %c's turn\n", player);
    printf("Enter move index (1-9): ");
    char * input[10];
    fgets(input,10,stdin);      // Read from standard input
    int move = atoi(input);     // Convert string to integer
    board[move - 1] = player;   // move-1 as the board is 0-8 but user types 1-9
    printf("\n");
}

// tictactoe()
// Call the whole game       
void tictactoe() {
    char players[2] = {'O','X'};            // Player 1 is O, Player 2 is X
    int playerIndex = 0;
    for(int i = 0; i < 9; i++) {
        char player = players[playerIndex]; // Get the current player
        displayBoard();
        takeTurn(player);
        if(winner(player)) {
            displayBoard();
            printf("Player %c wins!", player);
            break;
        }
        playerIndex = ! playerIndex;
    }
}

int main() {
    tictactoe();
}