# Uvoz s spletne strani

library(XML)

# Vrne vektor nizov z odstranjenimi začetnimi in končnimi "prazninami" (whitespace)
# iz vozlišč, ki ustrezajo podani poti.
stripByPath <- function(x, path) {
  unlist(xpathApply(x, path,
                    function(y) gsub("^\\s*(.*?)\\s*$", "\\1", xmlValue(y))))
}

uvozi.diplomanti <- function() {
  url.diplomanti <- "podatki/diplomantir.htm"
  doc.diplomanti <- htmlTreeParse(url.diplomanti, useInternalNodes=TRUE,
                                encoding="UTF-8")
  
  # Poiščemo vse tabele v dokumentu
  tabele1 <- getNodeSet(doc.diplomanti, "//table")
  
  # Iz druge tabele dobimo seznam vrstic (<tr>) neposredno pod
  # trenutnim vozliščem
  vrstice1 <- getNodeSet(tabele1[[1]], ".//tr")
  
  
  # Seznam vrstic pretvorimo v seznam (znakovnih) vektorjev
  # s porezanimi vsebinami celic (<td>) neposredno pod trenutnim vozliščem
  seznam1 <- lapply(vrstice1[5:length(vrstice1)-1], stripByPath, "./td")
  
  # Iz seznama vrstic naredimo matriko
  matrika1 <- matrix(unlist(seznam1), nrow=length(seznam1), byrow=TRUE)
  
  # Imena stolpcev matrike dobimo iz celic (<th>) glave (prve vrstice) prve tabele
  colnames(matrika1) <- 2006:2013
  
  imena1 <- unlist(lapply(vrstice1[5:length(vrstice1)-1], stripByPath, "./th"))
  
  # Podatke iz matrike spravimo v razpredelnico
  return(data.frame(apply(matrika1, 2, as.numeric), row.names=imena1))
}

