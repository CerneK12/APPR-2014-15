#pita diplomanti

pdf("slike/leto_2007_diplomanti.pdf")
pie(diplomanti[,"X2007"],
    labels = diplomanti[,1],
    cex=0.8,
    main="DELEZ DIPLOMANTOV PO REGIJAH, 2007",
    col=rainbow(12))
dev.off()
