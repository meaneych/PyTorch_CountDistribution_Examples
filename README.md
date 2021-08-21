# PyTorch_CountDistribution_Examples

This repository contains examples illustrating how to fit various count regression models via AutoGrad/SGD using PyTorch.

In particular, the six classes of count regression models considered are listed below. The models are useful for fitting count regression models, when the outcome of interest displays over-dispersion (i.e. V(Y)>E(Y)); i.e. violating a standard assumption of the traditional Poisson model.

1. Poisson regression (**working**)
2. Negative Binomial 1 (NB1) regression (**working**)
3. Negative Binomial 2 (NB2) regression (**working**)
4. Poisson Inverse Gaussian regression (**issue with loss function**)
5. Sichel regression (**issue with loss function; also need to develop torch.special.kv() module**).
6. Delaporte regression (**issue with loss function**)

We illustrate our examples using a toy dataset where the response/target variable represents the "number of fish species in a lake" (a count random variable), and the single continuous predictor/feature of interest is the "volume of the lake". The dataset can be obtained from the R gamlss/gamlss.dist packages (it is called species.csv in this repository). The results obtained from fitting the various count regression models to the species.csv data are packaged into 6 separate IPYNB files (Jupyter Notebooks). We compare the parameter estimates obtained from fitting the various regression models using PyTorch AutoGrad/SGD versus those obtained from fitting equivalent models using the R gamlss package (noting that different/second-order estimation routines are used by R- i.e the RS method). 

Details on the R gamlss package and the various count data distributions can be obtained from:  
    https://cran.r-project.org/web/packages/gamlss/index.html  
    https://github.com/cran/gamlss.dist  

Additional theory/details related to the various count data distributions can be obtained on pages 196-198 of the following textbook/manual:  
    http://www.gamlss.com/wp-content/uploads/2013/01/gamlss-manual.pdf  

Selected peer-reviewed manuscripts discussing count data models/distributions are given below:  
    https://www.sciencedirect.com/science/article/abs/pii/S0167947308003861  
    https://www.jstor.org/stable/pdf/25472639.pdf?refreqid=excelsior%3A7c3353002761ea873ca29c754b128596  

Comprehensive textbook coverage on mixed Poisson distributions (and associated regression models) is given in Cameron and Trivedi (Chapter 4) and/or Johnson and Kotz (Chapter 8):  
    http://cameron.econ.ucdavis.edu/racd/count.html  
    https://onlinelibrary.wiley.com/doi/book/10.1002/0471715816  

**WARNING** only three of the six functions/scripts created above are working. I am still trying to get the PIG, SICHEL and DEL scripts to work in PyTorch.
