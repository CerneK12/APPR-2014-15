# 4. faza: Analiza podatkov


#graf dip. obs. abs. vrednost


pdf("slike/analiza_povprecno.pdf")
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
            ylab="obsojeni",
            rylab="diplomanti",
            main ="Povprecni delezi diplomantov in obsojenih v Sloveniji")

legend("topleft",
       legend = c("DIPLOMANTI",
                  "OBSOJENI"),
       col = c("red","black"),
       lty = c("solid", "solid"),
       pch = c(2,1),
       bg = "white")
dev.off()