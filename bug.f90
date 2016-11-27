program bugs
   implicit none
   real last
   real c(10)
   integer p

   ! Initialise c with successive integer values.
   do p=1,10
       c(p)=p
    enddo

    ! Calculate and print ratios of successive integers.
    last = 0.0
    do p=1,10
        call divide(last, c(p))
        last = c(p)
    enddo
end program bugs

subroutine divide(d,e)
    implicit none
    real d,e
    print *,e/d
end subroutine divide
