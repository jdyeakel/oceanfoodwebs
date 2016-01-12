

#Import masses of animals


#Parameter values
alpha <- -1.77
beta <- -8.54
gamma <- -3.33

mi <- 0.05 #Prey body size
mj <- 7500 #Predator body size


#Ignoring vi and delta for now...
#If fj is zero, probability is based on body size alone
#If fj is -100, then the probability of linkage is ZERO
#If fj is +100, then the probability of linkage is 1.0
delta <- 1
vi <- 1
fj <- 375

#The hidden matrix
#M <- matrix(0,fwsize,fwsize)


p <- exp(alpha + beta*log(mi/mj) + gamma*log(mi/mj)^2 + vi*delta*fj)
prob_int <- p/(1+p)