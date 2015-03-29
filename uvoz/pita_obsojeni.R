#pita obsojeni

pdf("slike/leto_2007_obsojeni.pdf")
pie(obsojeni[,"X2007"],
    labels = obsojeni[,1],
    radius = 0.6,
    main="DELEZ OBSOJENIH FIZICNIH OSEB PO REGIJAH, 2007",
    col=rainbow(12))
dev.off()
