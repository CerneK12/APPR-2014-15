# 4. faza: Analiza podatkov
pdf("slike/analiza.pdf")
leta <- 2006:2013
stolpci <- paste0("X", leta)
vsota.dip <- colSums(diplomanti[1:12,2:9],na.rm=FALSE)
vsota.obs <- colSums(obsojeni[1:12,2:9],na.rm=FALSE)


library(plotrix)

#nariše graf z dvema koordinatama

twoord.plot(leta,
            vsota.dip,
            leta,
            vsota.obs,
            xlab="Leta",
            ylab="delež diplomantov",
            rylab="delež obsojenih",
            main ="Diplomanti in obsojeni v Sloveniji")

legend("bottomright",
       legend = c("delež diplomantov",
                  "delež obsojenih"),
       col = c("red","black"),
       lty = c("solid", "solid"),
       pch = c(2,1),
       bg = "white")
dev.off()

