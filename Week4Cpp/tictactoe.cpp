#include <iostream>

using namespace std;

class Board {
    private:
        const int winningCombos [8][3] = {
            {0, 1, 2}, // top row
            {3, 4, 5}, // middle row
            {6, 7, 8}, // bottom row
            {0, 3, 6}, // left column
            {1, 4, 7}, // middle column
            {2, 5, 8}, // right column
            {0, 4, 8}, // diagonal top left to bottom right
            {2, 4, 6}  // diagonal top right to bottom left
        };
        char board[9];

    public:
        Board() {
            for (int i = 0; i < 9; i++) {
                board[i] = ' ';
            }
        }

        void displayBoard() {
            printf("-------\n");
            printf("|%c|%c|%c|\n",board[0],board[1],board[2]);
            printf("-------\n");
            printf("|%c|%c|%c|\n",board[3],board[4],board[5]);
            printf("-------\n");
            printf("|%c|%c|%c|\n",board[6],board[7],board[8]);
            printf("-------\n");
        }

        bool winner(char player) {
            for (int i = 0; i < 8; i++) {
                if (board[winningCombos[i][0]] == player && 
                    board[winningCombos[i][1]] == player && 
                    board[winningCombos[i][2]] == player) {
                        return true;
                }
            }
            return false;
        }

        void add(int move, char player) {
            board[move] = player;
        }

};

class Game {
    private:
        Board * board;
        char turns[9] = {'O', 'X', 'O', 'X', 'O', 'X', 'O', 'X', 'O'};
        int turn_index = 0;

        void takeTurn(char player) {
            cout << "It's player " << player << "'s turn\n" << endl;
            cout << "Enter a move index (1-9): " << endl;
            int move;
            cin >> move;
            board->add(move - 1, player); // can also use: (*board).add(move - 1, player);
        }

    public:
        Game(Board * reqBoard) {
            board = reqBoard;
        }

        bool ended() {
            return turn_index >= 9;
        }

        void play() {
            char player = turns[turn_index];
            turn_index++;
            board->displayBoard();
            takeTurn(player);
            if (board->winner(player)) {
                board->displayBoard();
                cout << "Player " << player << " wins!" << endl;
                turn_index = 9; // end the game
            }
        }
};

int main() {
    Board * board = new Board();
    Game * game = new Game(board);

    while(! game->ended())
    game->play();
}