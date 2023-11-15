(defun build-grid ()
  '(- - - - - - - - -)
)

(defun printer (grid)
  (if (eq grid nil)
      (return-from printer)
      (print (subseq grid 0 3))
  )
  (printer (subseq grid 3 nil))
)

(defun win-p (grid player)
    ( let ((list-of-bools
            (mapcar #'(lambda (x) 
                (and (equal (elt grid (first  x)) player)
                     (equal (elt grid (second x)) player)
                     (equal (elt grid (third  x)) player)
                )
              ) 
               '((0 1 2) (3 4 5) (6 7 8)
                (0 3 6) (1 4 7) (2 5 8)
                (0 4 8) (2 4 6))
            )
            ))
          ;(print list-of-bools)
          (reduce #'(lambda (x y) (or x y)) list-of-bools)
    )
)

(defun next-move (grid current-player)
  (format t "Player ~A, which square? " current-player)
  (let ((digit (- (read) 1)))
    (setf (elt grid digit) current-player)
    (return-from next-move grid)
  )
)

(defun switch-player (current-player)
  (if (eql current-player 'x)
      'o
      'x)
)

(defun game-loop (grid current-player turn)
  (printer grid)
  (terpri)
  (when (= turn 9)
    (write-line "Draw!")
    (return-from game-loop))
  (let ((grid2 (next-move grid current-player)))
    (if (win-p grid2 current-player)
        (progn
          (printer grid2)
          (terpri)
          (format t "Player ~A wins!" current-player)
        )
        (game-loop grid2
                   (switch-player current-player)
                   (+ turn 1)
        )
    )
  )
)


(game-loop (build-grid) 'o 0)
