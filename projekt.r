# 2. faza: Obdelava, uvoz in čiščenje podatkov

#source("uvoz/uvoz.r")

source("uvoz/uvoz1.r") #obsojeni
source("uvoz/uvoz2.r") #diplomanti
source("uvoz/pita_obsojeni.r") #graf-obsojeni
source("uvoz/graf_obsojeni.r") #graf-obsojeni
source("uvoz/pita_diplomanti.r") #graf-diplomanti
source("uvoz/graf_diplomanti.r") #graf-diplomanti
source("lib/xml.r") #xml-obsojeni
source("lib/xml1.r") #xml-diplomanti



# 3. faza: Analiza in vizualizacija podatkov
#source("vizualizacija/vizualizacija.r")

# 4. faza: Napredna analiza podatkov
#source("analiza/analiza.r")

cat("Končano.\n")