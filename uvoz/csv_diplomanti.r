# 2. faza: Uvoz podatkov


#Tabela DIPLOMANTI

# Funkcija, ki uvozi podatke iz datoteke diplomanti.csv
uvoziDiplomanti <- function() {
  return(read.table("podatki/diplomantir.csv", sep = ";", as.is = TRUE,
                    col.names = c("obcina", "2006", "2007", "2008", "2009", "2010", "2011", "2012","2013"),
                    fileEncoding = "Windows-1250"))
}

# Zapišimo podatke v razpredelnico diplomanti.
cat("Uvažam podatke o diplomantih...\n")
diplomanti <- uvoziDiplomanti()
