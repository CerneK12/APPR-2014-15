# 4. faza: Analiza podatkov


#graf dip. obs. abs. vrednost


pdf("slike/analiza.povprecno.pdf")
leta <- 2006:2013
abs.dip <- apply(diplomanti[1:12,2:9],2,mean)
abs.obs <- apply(obsojeni[1:12,2:9],2,mean)


library(plotrix)

#nariše graf z dvema koordinatama

twoord.plot(leta,
            abs.dip,
            leta,
            abs.obs,
            xlab="Leta",
            ylab="povprečen delež obsojenih",
            rylab="povprečen delež diplomantov",
            main ="Diplomanti in obsojeni v Sloveniji")

legend("topleft",
       legend = c("povprečen delež diplomantov",
                  "povprečen delež obsojenih"),
       col = c("red","black"),
       lty = c("solid", "solid"),
       pch = c(2,1),
       bg = "white")
dev.off()