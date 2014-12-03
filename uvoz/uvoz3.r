#Tabela BREZPOSELNIH

# Funkcija, ki uvozi podatke iz datoteke diplomanti.csv
uvoziBrezposelni <- function() {
  return(read.table("podatki/brezposelnir.csv", sep = ";", as.is = TRUE,
                    col.names = c("obcina", "2006", "2007", "2008", "2009", "2010", "2011", "2012","2013"),
                    fileEncoding = "Windows-1250"))
}

# Zapišimo podatke v razpredelnico breposelni.
cat("Uvažam podatke o brezposelnih...\n")
brezposelni <- uvoziBrezposelni()