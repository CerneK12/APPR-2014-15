pdf("slike/obsojeni.pdf")


xo <- 2006:2013
dec.st <- function(x, k) format(round(x, k), nsmall=k)
mo <- dec.st(min(ceiling(obsojeni[,2:9])),2)
Mo <- dec.st(max(ceiling(obsojeni[,2:9])),2)
yo <- mo:Mo
barve <- rainbow(12) 
reg <- c(1:12)

#koordinatni sistem
plot(xo, yo, type="n", xlab="leto", ylab="st. diplomantov na 1000 prebivalcev" ) 


#graf
for(i in 1:12){
  lines(xo, as.numeric(obsojeni[i,2:length(obsojeni[i,])]),
        type="b", lwd=0.5,
        lty=reg[i], pch=reg[i], col=barve[i]) 
}

#naslov
title("OBSOJENI")

#legenda
legend("top", obsojeni[,"obcina"], cex=0.7, col=barve,
       pch=reg, lty=reg, title="Regije")

dev.off()
