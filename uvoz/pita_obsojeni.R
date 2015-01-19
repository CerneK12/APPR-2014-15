pdf("slike/leto_2007_obsojeni.pdf")

pie(obsojeni[,"X2007"], labels = obsojeni[,1], main="DELEZ OBSOJENIH FIZICNIH OSEBAH PO REGIJAH, 2007", col=rainbow(12))

dev.off()
