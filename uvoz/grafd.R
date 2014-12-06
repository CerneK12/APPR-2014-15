pdf("slike/leto_2007_diplomanti.pdf")
plot( diplomanti[,"X2007"], xlab="regije", ylab="stevilo diplomantov", type="b")
dev.off()

#na x osi bi rada, da bi namesto zaporedne številke izpisalo ime regije...