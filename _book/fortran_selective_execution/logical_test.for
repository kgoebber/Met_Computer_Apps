      PROGRAM logical_test

      implicit none
      integer x,y
      logical test

      x = 5
      y = 3
      
      test = x .LT. y

      print*, "The statement is ",test

      END PROGRAM
