pdf("slike/2007.pdf", paper="a4r")
pie(obsojeni[,"X2007"], labels = obsojeni[,1])
text(-1.5,1,"2007", cex =2)
dev.off()
