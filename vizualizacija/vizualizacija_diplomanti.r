# 3. faza: Izdelava zemljevida

#zemljevid diplomantov


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
min.2007 <- min(DIPLOMANTI[2], na.rm=TRUE)
max.2007 <- max(DIPLOMANTI[2], na.rm=TRUE)

# Narišimo zemljevid v PDF.
cat("Rišem zemljevid...\n")
pdf("slike/zemljevid_diplomanti.pdf", width=6, height=4)

# n = 100
# barve = topo.colors(n)[1+(n-1)*(druzine$povprecje-min.povprecje)/(max.povprecje-min.povprecje)]
# plot(obcine, col = barve)
popravek.koordinat <- c(0,0,0,0,0,0,-4000,0,0,0,0,0,0,0,0,0,0,3000,-3000,0,0,0,0,-7000)

regije$x2007 <- DIPLOMANTI[,2]
print(spplot(regije, "x2007", col = heat.colors(100), main = "Diplomanti v Sloveniji za leto 2007",
             sp.layout = list(list("sp.text", coordinates(regije) + popravek.koordinat , regije$IME, cex = 0.4))))

dev.off()