##################################################################
## Author: Chris Meaney
## Date: Jan 12, 2020
##
## Estimate count matrix distribution parms
##################################################################

## Disable scientific notation
options(scipen=999)

## Package dependencies
library(gamlss)
library(gamlss.dist)

## Load species data
## dim(70,2): 
##     - species  (count of number of species in lake i=1...70)
##     - area     (continuous measure of size of lake i=1...70) 
data(species)
summary(species)
plot(x=log(species$lake), y=species$fish, xlab="Size Lake", ylab="Number Fish")


#####################################################################
## Compare against other GAMLSS distributions
#####################################################################

## Modify the species dataset
species$x <- log(species$lake)
species$scale_x <- scale(species$x)

## Poisson model
R_PO <- gamlss(fish ~ 1, data = species, family = "PO")
summary(R_PO)

## NBI Model
R_NBI <- gamlss(fish ~ 1, data = species, family = "NBI")
summary(R_NBI)

## NBII Model
R_NBII <- gamlss(fish ~ 1, data = species, family = "NBII")
summary(R_NBII)

## PIG Model
R_PIG <- gamlss(fish ~ 1, data = species, family = "PIG")
summary(R_PIG)

## Delaport Model
R_DEL <- gamlss(fish ~ 1, data = species, family = "DEL")
summary(R_DEL)

## Sichel Model
R_SICHEL <- gamlss(fish ~ 1, data = species, family = "SICHEL")
summary(R_SICHEL)


#####################################################################
## Compare against other GAMLSS distributions
#####################################################################

## Modify the species dataset
species$x <- log(species$lake)
species$scale_x <- scale(species$x)

## Poisson model
R_PO <- gamlss(fish ~ scale_x, data = species, family = "PO")
summary(R_PO)

## NBI Model
R_NBI <- gamlss(fish ~ scale_x, data = species, family = "NBI")
summary(R_NBI)

## NBII Model
R_NBII <- gamlss(fish ~ scale_x, data = species, family = "NBII")
summary(R_NBII)

## PIG Model
R_PIG <- gamlss(fish ~ scale_x, data = species, family = "PIG")
summary(R_PIG)

## Delaport Model
R_DEL <- gamlss(fish ~ scale_x, data = species, family = "DEL")
summary(R_DEL)

## Sichel Model
R_SICHEL <- gamlss(fish ~ scale_x, data = species, family = "SICHEL")
summary(R_SICHEL)



#######################
## Write to disk
#######################
write.csv(x=species, file="\\C:\\Users\\ChristopherMeaney\\Desktop\\PyTorch_Stuff\\pytorch_count_dists\\species.csv", row.names=FALSE)


