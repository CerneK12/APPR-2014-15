pdf("slike/zasavska.pdf")


x <- 2006:2013
dec.st <- function(x, k) format(round(x, k), nsmall=k)
m <- dec.st(min(floor(obsojeni[,2:9])),2)
M <- dec.st(max(ceiling(diplomanti[,2:9])),2)
y <- seq(1,12,1.5)
barve <- rainbow(12) 
reg <- c(1:12)

#koordinatni sistem
plot(x, y, type="n", xlab="leto", ylab="st. diplomantov in obsojenih na 1000 prebivalcev" ) 

d <- c(as.numeric(diplomanti[5,2:9]))
o <- c(as.numeric(obsojeni[5,2:9]))

#graf
lines(x,d,type="b", lwd=0.5, lty=reg[1], pch=reg[1], col=barve[1]) #diplomanti
lines(x,o,type="b" ,lwd=0.5,  lty=reg[2], pch=reg[2], col=barve[2]) #obsojeni



#naslov
title("ZASAVSKA")

#legenda
legend("bottomright", c("diplomanti", "obsojeni"), cex=1, col=barve,
       pch=reg, lty=reg, title="Legenda")

dev.off()
