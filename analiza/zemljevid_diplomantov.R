# 3. faza: Izdelava zemljevida

#zemljevidi diplomantov

# Uvozimo funkcijo za pobiranje in uvoz zemljevida.
source("lib/uvozi.zemljevid.r")

# Uvozimo zemljevid.
cat("Uvažam zemljevid...\n")
regije <- uvozi.zemljevid("http://www.stat.si/doc/Geo/Statisticne_regije_NUTS3.zip",
                          "regije", "Statisticne_regije.shp", mapa = "zemljevid",
                          encoding = "Windows-1250")

# Funkcija, ki podatke preuredi glede na vrstni red v zemljevidu
preuredi <- function(podatki, zemljevid) {
  return(data.frame(podatki[order(rownames(podatki)), ])[rank(levels(zemljevid$IME)[rank(zemljevid$IME)]), ])
}

# Preuredimo podatke, da jih bomo lahko izrisali na zemljevid.
DIPLOMANTI <- preuredi(DIPLOMANTI, regije)

# Izračunamo MIN in MAX vrednost
min.2006 <- min(DIPLOMANTI[1], na.rm=TRUE)
max.2006 <- max(DIPLOMANTI[1], na.rm=TRUE)
min.2007 <- min(DIPLOMANTI[2], na.rm=TRUE)
max.2007 <- max(DIPLOMANTI[2], na.rm=TRUE)
min.2008 <- min(DIPLOMANTI[3], na.rm=TRUE)
max.2008 <- max(DIPLOMANTI[3], na.rm=TRUE)
min.2009 <- min(DIPLOMANTI[4], na.rm=TRUE)
max.2009 <- max(DIPLOMANTI[4], na.rm=TRUE)
min.2010 <- min(DIPLOMANTI[5], na.rm=TRUE)
max.2010 <- max(DIPLOMANTI[5], na.rm=TRUE)
min.2011 <- min(DIPLOMANTI[6], na.rm=TRUE)
max.2011 <- max(DIPLOMANTI[6], na.rm=TRUE)
min.2012 <- min(DIPLOMANTI[7], na.rm=TRUE)
max.2012 <- max(DIPLOMANTI[7], na.rm=TRUE)
min.2013 <- min(DIPLOMANTI[8], na.rm=TRUE)
max.2013 <- max(DIPLOMANTI[8], na.rm=TRUE)

popravek.koordinat <- c(0,0,0,0,0,0,-4000,0,0,0,0,0,0,0,0,0,0,3000,-3000,0,0,0,0,-7000)


# Narišimo zemljevid v PDF.
cat("Rišem zemljevid diplomantov od leta 2006 do leta 2013\n")
pdf("slike/diplomanti_1.pdf", width=6, height=4)

regije$x2006 <- DIPLOMANTI[,1]
print(spplot(regije, "x2006", col = heat.colors(100), main = "Diplomanti v Sloveniji za leto 2006",
             sp.layout = list(list("sp.text", coordinates(regije) + popravek.koordinat , regije$IME, cex = 0.4))))
dev.off()


pdf("slike/diplomanti_2.pdf", width=6, height=4)

regije$x2007 <- DIPLOMANTI[,2]
print(spplot(regije, "x2007", col = heat.colors(100), main = "Diplomanti v Sloveniji za leto 2007",
             sp.layout = list(list("sp.text", coordinates(regije) + popravek.koordinat , regije$IME, cex = 0.4))))
dev.off()


pdf("slike/diplomanti_3.pdf", width=6, height=4)

regije$x2008 <- DIPLOMANTI[,3]
print(spplot(regije, "x2008", col = heat.colors(100), main = "Diplomanti v Sloveniji za leto 2008",
             sp.layout = list(list("sp.text", coordinates(regije) + popravek.koordinat , regije$IME, cex = 0.4))))
dev.off()


pdf("slike/diplomanti_4.pdf", width=6, height=4)

regije$x2009 <- DIPLOMANTI[,4]
print(spplot(regije, "x2009", col = heat.colors(100), main = "Diplomanti v Sloveniji za leto 2009",
             sp.layout = list(list("sp.text", coordinates(regije) + popravek.koordinat , regije$IME, cex = 0.4))))
dev.off()


pdf("slike/diplomanti_5.pdf", width=6, height=4)

regije$x2010 <- DIPLOMANTI[,5]
print(spplot(regije, "x2010", col = heat.colors(100), main = "Diplomanti v Sloveniji za leto 2010",
             sp.layout = list(list("sp.text", coordinates(regije) + popravek.koordinat , regije$IME, cex = 0.4))))
dev.off()


pdf("slike/diplomanti_6.pdf", width=6, height=4)

regije$x2011 <- DIPLOMANTI[,6]
print(spplot(regije, "x2011", col = heat.colors(100), main = "Diplomanti v Sloveniji za leto 2011",
             sp.layout = list(list("sp.text", coordinates(regije) + popravek.koordinat , regije$IME, cex = 0.4))))
dev.off()


pdf("slike/diplomanti_7.pdf", width=6, height=4)

regije$x2012 <- DIPLOMANTI[,7]
print(spplot(regije, "x2012", col = heat.colors(100), main = "Diplomanti v Sloveniji za leto 2012",
             sp.layout = list(list("sp.text", coordinates(regije) + popravek.koordinat , regije$IME, cex = 0.4))))
dev.off()


pdf("slike/diplomanti_8.pdf", width=6, height=4)

regije$x2013 <- DIPLOMANTI[,8]
print(spplot(regije, "x2013", col = heat.colors(100), main = "Diplomanti v Sloveniji za leto 2013",
             sp.layout = list(list("sp.text", coordinates(regije) + popravek.koordinat , regije$IME, cex = 0.4))))

dev.off()
