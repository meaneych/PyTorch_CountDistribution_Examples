# PyTorch_CountDistribution_Examples

This repository contains examples illustrating how to fit various count regression models via AutoGrad/SGD using PyTorch.

In particular, the six classes of count regression models considered are listed below. The models are useful for fitting count regression models, when the outcome of interest displays over-dispersion (i.e. V(Y)>E(Y)); a standard assumption of the Poisson model.

1. Poisson regression
2. Negative Binomial 1 (NB1) regression
3. Negative Binomial 2 (NB2) regression
4. Poisson Inverse Gaussian regression
5. Sichel regression
6. Delaporte regression

We illustrate our examples using a toy dataset where the response/target variable represents the "number of fish in a lake" (a count random variable), and the single continuous predictor of interest is the "volume of the lake". The dataset can be obtained from the R gamlss/gamlss.dist packages. The results of these toy count regression models are packaged in 6 separate IPYNB files (Jupyter Notebooks). In addition to the results obtained from fitting these models via SGD/AutoGrad in PyTorch, we also fit the models in R using the gamlss package and compare resulting parameter estimates. 

Additional details on GAMLSS and the count data distributions under consideration can be obtained at:
    https://cran.r-project.org/web/packages/gamlss/index.html
    https://github.com/cran/gamlss.dist

Additional theory related to these particular count data distributions can be obtained on pages 196-198 of the following textbook/manual:
    http://www.gamlss.com/wp-content/uploads/2013/01/gamlss-manual.pdf

Selected peer-reviewed papers discussing count data models/distributions include:
    https://www.sciencedirect.com/science/article/abs/pii/S0167947308003861
    https://www.jstor.org/stable/pdf/25472639.pdf?refreqid=excelsior%3A7c3353002761ea873ca29c754b128596

Comprehensive textbook coverage on mixed Poisson distributions are given in Cameron and Trivedi (Chapter 4) and/or Johnson and Kotz (Chapter 8):
    http://cameron.econ.ucdavis.edu/racd/count.html
    https://onlinelibrary.wiley.com/doi/book/10.1002/0471715816
