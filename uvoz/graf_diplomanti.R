pdf("slike/diplomanti.pdf")

x <- 2006:2013
dec.st <- function(x, k) format(round(x, k), nsmall=k)
m <- dec.st(min(floor(DIPLOMANTI)),2)
M <- dec.st(max(ceiling(DIPLOMANTI)),2)
y <- m:M
barve <- rainbow(12) 
reg <- c(1:12)

#koordinatni sistem
plot(x, y, type="n", xlab="leto", ylab="st. diplomantov na 1000 prebivalcev" ) 


#graf
for(i in 1:12){
  lines(x, as.numeric(DIPLOMANTI[i,1:length(DIPLOMANTI[i,])]),
        type="b", lwd=0.5,
        lty=reg[i], pch=reg[i], col=barve[i]) 
}

#naslov
title("DIPLOMANTI")

#legenda
legend("bottomright", diplomanti[,"obcina"], cex=0.4, col=barve,
       pch=reg, lty=reg, title="Regije")

dev.off()
