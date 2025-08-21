program Principal
    implicit none

    real :: resultado
    real, external :: integrando
    call qromb(integrando, 0, 1, resultado)

    print *, "Resultado = ", resultado

end program Principal

function integrando(z)
    implicit none
    real, intent(in) :: z
    real :: m0, r0, k0, lambda0, c, H0, l
    real :: integrando

    m0      = 0.3
    r0      = 0.0
    k0      = 0.0
    lambda0 = 0.7
    c       = 300000.0
    H0      = 70.0
    l       = 1.0

    integrando = c/H0*l*sqrt(r0*(1.+z)**4 + m0*(1.+z)**3 + k0*(1.+z)**2 + lambda0)
end function integrando


include "polint.f"
include "trapzd.f"
include "qromb.f"


