# 2. faza: Obdelava, uvoz in čiščenje podatkov


#source("uvoz/uvoz.r")

source("uvoz/csv_obsojeni.r") #obsojeni
source("uvoz/csv_diplomanti.r") #diplomanti
source("uvoz/xml_obsojeni.r") #xml-obsojeni
source("uvoz/xml_diplomanti.r") #xml-diplomanti
source("uvoz/pita_obsojeni.r") #pita-obsojeni
source("uvoz/graf_obsojeni.r") #graf-obsojeni
source("uvoz/pita_diplomanti.r") #pita-diplomanti
source("uvoz/graf_diplomanti.r") #graf-diplomanti
source("uvoz/graf_zasavska.r") #graf-zasavska



# 3. faza: Analiza in vizualizacija podatkov
source("vizualizacija/vizualizacija_obsojeni.r")
source("vizualizacija/vizualizacija_diplomanti.r")


# 4. faza: Napredna analiza podatkov
#source("analiza/analiza.r")

#cat("Končano.\n")
