# 2. faza: Uvoz podatkov


#Tabela OBSOJENI

# Funkcija, ki uvozi podatke iz datoteke druzine.csv
uvoziObsojeni <- function() {
  return(read.table("podatki/obsojeni.csv", sep = ";", as.is = TRUE,
                      col.names = c("obcina", "2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013"),
                      fileEncoding = "Windows-1250"))
}

# Zapišimo podatke v razpredelnico druzine.
cat("Uvažam podatke o Obsojenih fizičnah osebah po občinah v Sloveniji...\n")
obsojeni <- uvoziObsojeni()



#Tabela DIPLOMANTI

# Funkcija, ki uvozi podatke iz datoteke diplomanti.csv
uvoziDiplomanti <- function() {
  return(read.table("podatki/diplomanti.csv", sep = ";", as.is = TRUE,
                    col.names = c("obcina", "2006", "2007", "2008", "2009", "2010", "2011", "2012","2013"),
                    fileEncoding = "Windows-1250"))
}

# Zapišimo podatke v razpredelnico druzine.
cat("Uvažam podatke o diplomantih...\n")
diplomanti <- uvoziDiplomanti()

# Če bi imeli več funkcij za uvoz in nekaterih npr. še ne bi
# potrebovali v 3. fazi, bi bilo smiselno funkcije dati v svojo
# datoteko, tukaj pa bi klicali tiste, ki jih potrebujemo v
# 2. fazi. Seveda bi morali ustrezno datoteko uvoziti v prihodnjih
# fazah.