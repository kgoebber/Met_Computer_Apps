      PROGRAM tmpk2tmpc
!ccccccccccccccccccccccccccccccccccccccccccccccc
! A program to convert temperatures in Kelvin
! to Celsius
!ccccccccccccccccccccccccccccccccccccccccccccccc

      implicit none
      real tmpk, tmpc

!      tmpk = 288
      read(*,*) tmpk

      tmpc = tmpk - 273.15

      print*, tmpc

      END PROGRAM
