# Tic Tac Toe

# Procedural

# 0 1 2
# 3 4 5
# 6 7 8

# List of winning combos (the board places you can get 3 in a row)
winning_combos = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]

# Set the board
board = ["-"] * 9 #absolutely disgusting, wth is wrong with python, why can you do this

# display_board()
# Use the previously made board array of "-"s to display the board
def display_board():
    print(board[0], board[1], board[2]) # - - -
    print(board[3], board[4], board[5]) # - - -
    print(board[6], board[7], board[8]) # - - -

# winner(+player)
# Check if the player has won
def winner(player):
    for combo in winning_combos:    # for every combo in winning_combos array (list of board combos)
        # if the board at the first index of the combo is the player, and the board at the second index of the combo is the player, and the board at the third index of the combo is the player
        if board[combo[0]] == player and board[combo[1]] == player and board[combo[2]] == player:
            return True
    return False

# take_turn(+player)
# Take a turn for the player
def take_turn(player):
    print("It's player " + player + "'s turn")
    move = int(input("Enter move index (1-9): ")) # get the move index position
    board[move-1] = player
    
# game_loop()
def game_loop():
    for player in ["o","x","o","x","o","x","o","x","o"]: # Each player turn
        display_board()     # Display the board
        take_turn(player)   # Take the player's turn
        if winner(player):  # Check if the player has won
            display_board() # Re-display the board after they took turn and won
            print("Player " + player + " wins")
            break

# main()
def main():
    game_loop()

# Run the main function
# Environment variables
if __name__ == "__main__":
    main()

    