#########################################
## Log Bessel functions in R...
##
## x >= 0; support over positive reals
## nu \in R (-oo < nu < oo) 
## exponent - can scale log Bessel
##
## http://127.0.0.1:30716/library/base/html/Bessel.html
##
#########################################


##
## Literature Review
##
## - Wiki Bessel function
## https://en.wikipedia.org/wiki/Bessel_function
##
## - Bessel functions also available in gsl package
## https://www.gnu.org/software/gsl/doc/latex/gsl-ref.pdf
## https://cran.r-project.org/web/packages/gsl/gsl.pdf
##
## - Martin Maechler has also written about Bessel function in R
## https://cran.r-project.org/web/packages/Bessel/vignettes/other-Bessels.pdf
##
## - Approximations of derivatives of Bessel functions
## https://dlmf.nist.gov/10.38
## https://stats.stackexchange.com/questions/55371/derivative-of-the-modified-bessel-function-of-third-kind-with-respect-to-its-ord
##



##########################################
## Modified Bessel 3rd Kind (besselK) over the non-neg integeers
##########################################
nus <- c(0:10)

x <- seq(0, 10, length.out = 1001)

plot(x, x, 
	ylim = c(0, 20), 
	xlim = c(0, 10),
	ylab = "", 
	type = "n",
    main = "Modified Bessel Function 3rd Kind K_nu(x)")

for(nu in nus) lines(x, besselK(x, nu = nu), col = nu + 2)

legend("topright", 
	legend=paste("nu=", nus), 
	col=nus + 2, 
	lwd=1, 
	bty="n")





##########################################
## Modified Bessel 3rd Kind (besselK) over the non-neg integeers
##########################################
nus <- c(0:10) + 1/2

x <- seq(0, 10, length.out = 1001)

plot(x, x, 
	ylim = c(0, 20), 
	xlim = c(0, 10),
	ylab = "", 
	type = "n",
    main = "Modified Bessel Function 3rd Kind K_nu(x)")

for(nu in nus) lines(x, besselK(x, nu = nu), col = nu + 2)

legend("topright", legend = paste("nu=", nus), col = nus + 2, lwd = 1, bty="n")







##########################################
## Modified Bessel 3rd Kind (besselK) over the post/neg ints
##########################################
nus <- c(-10:10)

x <- seq(0, 10, length.out = 1001)

plot(x, x, 
	ylim = c(0, 20), 
	xlim = c(-10, 10),
	ylab = "", 
	type = "n",
    main = "Modified Bessel Function 3rd Kind K_nu(x)")

for(nu in nus) lines(x, besselK(x, nu=nu), col=nu+2)

legend("topright", legend = paste("nu=", nus), col = nus + 2, lwd = 1, bty="n")






##################################################
## Python reticulate
## https://cran.r-project.org/web/packages/reticulate/vignettes/calling_python.html
##################################################
library(reticulate)
scipy <- import("scipy.special", convert=FALSE)


##
## Integer order Bessel in python
##
int_bessel_py <- c(py_to_r(scipy$kn(0, 1:10)))
int_bessel_r <- besselK(1:10, 0)

all.equal(int_bessel_py, int_bessel_r)


##
## Negative integer Bessel in python
##
negint_bessel_py <- c(py_to_r(scipy$kn(-1, 1:10)))
negint_bessel_r <- besselK(1:10, -1)

all.equal(negint_bessel_py, negint_bessel_r)


##
## Real valued Bessel in python
##
rv_bessel_py <- c(py_to_r(scipy$kv(-0.5, 1:10)))
rv_bessel_r <- besselK(1:10, -0.5)

all.equal(rv_bessel_py, rv_bessel_r)

