
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
	for _
}

func main() {

}