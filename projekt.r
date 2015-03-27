# 2. faza: Obdelava, uvoz in čiščenje podatkov


#source("uvoz/uvoz.r")

source("uvoz/csv_obsojeni.r") #obsojeni
source("uvoz/csv_diplomanti.r") #diplomanti
source("uvoz/xml_obsojeni.R") #xml-obsojeni
source("uvoz/xml_diplomanti.R") #xml-diplomanti
source("uvoz/pita_obsojeni.R") #pita-obsojeni
source("uvoz/graf_obsojeni.R") #graf-obsojeni
source("uvoz/pita_diplomanti.R") #pita-diplomanti
source("uvoz/graf_diplomanti.R") #graf-diplomanti
source("uvoz/graf_zasavska.R") #graf-zasavska



# 3. faza: Analiza in vizualizacija podatkov
source("vizualizacija/vizualizacija_obsojeni.r")
source("vizualizacija/vizualizacija_diplomanti.r")


# 4. faza: Napredna analiza podatkov
source("analiza/analiza.od.povprecno.r")
source("analiza/zemljevid_diplomantov.r")


#cat("Končano.\n")
