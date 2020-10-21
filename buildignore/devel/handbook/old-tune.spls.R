suppressMessages(devtools::load_all("/Users/alabadi/Projects/dev/R/_work/mixOmics/mixOmics_ajabadi/mixOmics_ajabadi"))
data(liver.toxicity)

X <- liver.toxicity$gene
X <- liver.toxicity$gene[,1:300]
Y <- liver.toxicity$clinic

tune.pls2.cor = tune.spls(X, Y, ncomp=2, test.keepX = c(5,10,15), measure = "cor",
                 nrepeat=3, progressBar = TRUE)
tune.pls2.RSS = tune.spls(X, Y, ncomp=2, test.keepX = c(5,10,15), measure = "RSS",
                      nrepeat=3, progressBar = TRUE)

tune.pls2

tune.pls2$choice.ncomp

X <- liver.toxicity$gene[,1:300]
Y <- liver.toxicity$clinic
tune.spca()
tune.pls2.cor = tune.spls(X, Y, ncomp=2, test.keepX = c(5,10,15),  measure = "cor",
                 nrepeat=3, progressBar = TRUE)
tune.pls2.RSS = tune.spls(X, Y, ncomp=2, test.keepX = c(5,10,15), measure = "RSS",
                      nrepeat=3, progressBar = TRUE)

tune.pls2.cor = tune.spls(X, Y, ncomp=2, test.keepX = c(5,10,15), test.keepY = c(5,7), measure = "cor",
                          nrepeat=3, progressBar = TRUE)
tune.pls2


tune.pls2$choice.keepX

plot(tune.pls2)


tune.pls1 = tune.spls(X, Y[,1], ncomp=2, test.keepX = c(5,10,15), measure = "MSE")

tune.pls1 = tune.spls(X, Y[,1], ncomp=2, test.keepX = c(5,10,15), measure = "cor",
                      nrepeat=3, progressBar = TRUE)

tune.pls1$choice.ncomp
tune.pls1$choice.keepX

# plot the results
plot(tune.pls1)
