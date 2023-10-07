# Tic Tac Toe

# Procedural

# 0 1 2
# 3 4 5
# 6 7 8

# Board class
class Board:
    # List of winning combos (the board places you can get 3 in a row)
    winning_combos = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
    # Set the board
    board = ["-"] * 9

    # display_board(+self)
    def display(self):
        print(self.board[0], self.board[1], self.board[2])
        print(self.board[3], self.board[4], self.board[5])
        print(self.board[6], self.board[7], self.board[8])

    # winner(+self,+player)
    def winner(self,player):
        for combo in self.winning_combos:
            if self.board[combo[0]] == player and self.board[combo[1]] == player and self.board[combo[2]] == player:
                print(combo)
                return True
        return False
        
    # add(+self,+move,+player)
    def add(self,move,player):
        self.board[move-1] = player

# Game class
class Game:
    
    # __init__(+self,+board)
    def __init__(self, board):
        self.board = board
        self.turns = ["o","x","o","x","o","x","o","x","o"]

    # take_turn(+self,+player)
    def take_turn(self,player):
        print("It's player " + player + "'s turn")
        move = int(input("Enter move index (1-9): "))
        self.board.add(move,player)
        
    # play(+self)
    def play(self):
        player = self.turns.pop()
        self.board.display()
        self.take_turn(player)
        
    # ended(+self)
    def ended(self):
        return len(self.turns) == 0

# main()
def main():
    board = Board()
    game = Game(board)
    
    while not game.ended():
        game.play()
        if board.winner("x"):
            board.display()
            print("Player X is the winner")
            break
        if board.winner("o"):
            board.display()
            print("Player O is the winner")
            break

# Run the main function
if __name__ == "__main__":
    main()

