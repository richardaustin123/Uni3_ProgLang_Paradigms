
package main

import "fmt"

var board [9]rune = [9]rune{'-', '-', '-', '-', '-', '-', '-', '-', '-'}

func display() {
  fmt.Println(string(board[0:3]))
  fmt.Println(string(board[3:6]))
  fmt.Println(string(board[6:9]))
}

var winningCombos [8][3]int = [8][3]int{{0, 1, 2}, {3, 4, 5}, {6, 7, 8}, {0, 3, 6}, {1, 4, 7}, {2, 5, 8}, {0, 4, 8}, {2, 4, 6}}

func winner(player rune) bool {
	for _, combo := range winningCombos {
		if board[combo[0]] == player && board[combo[1]] == player && board[combo[2]] == player {
			return true
		}
	}
}

func takeTurn(player rune) {
	fmt.Printf("It's Player ", string(player), ", enter a position:")
	fmt.Printf("Enter a move index (1-9)")
	var move int
	fmt.Scanf(&move)
	board[move - 1] = player
}

func next(el1, el2 rune) func() rune {
	current := el2
	return func() rune {
		if (current == el1) {
			current = el2
		} else {
			current = el1
		}
	return current
	}
}


func main() {
	nextPlayer := next('O', 'X')
	for i := 0; i < 9; i++ {
		display()
		takeTurn(player)
		if winner(player) {
			display()
			fmt.Println("Player ", string(nextPlayer()), " wins!")
			return
		}
	}
}