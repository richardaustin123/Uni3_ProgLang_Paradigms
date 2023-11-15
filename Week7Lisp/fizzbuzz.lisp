(defun fizzbuzz (num)
  (if (eq (mod num 15) 0) 
      "fizzbuzz"
      (if (eq (mod num 3) 0) 
          "fizz"
          (if (eq (mod num 5) 0) 
              "buzz" 
              num
          )
      )
  )
)

(defun fblist (num)
  (if (> num 1) 
      (fblist (- num 1))
  )
  (print (fizzbuzz num))
)

(fblist 100)
