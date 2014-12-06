pdf("slike/leto_2007_obsojeni.pdf")
pie(obsojeni[,"X2007"], labels = obsojeni[,1], main="OBSOJENE FIZICNE OSEBE PO REGIJAH")
text(-1.5,1,"2007", cex =2)
dev.off()
