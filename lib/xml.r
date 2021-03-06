# Uvoz s spletne strani

library(XML)

# Vrne vektor nizov z odstranjenimi začetnimi in končnimi "prazninami" (whitespace)
# iz vozlišč, ki ustrezajo podani poti.
stripByPath <- function(x, path) {
  unlist(xpathApply(x, path,
                    function(y) gsub("^\\s*(.*?)\\s*$", "\\1", xmlValue(y))))
}

uvozi.obsojeni <- function() {
  url.obsojeni <- "podatki/obsojenir.htm"
  doc.obsojeni <- htmlTreeParse(url.obsojeni, useInternalNodes=TRUE,
                                encoding="UTF-8")
  
  # Poiščemo vse tabele v dokumentu
  tabele <- getNodeSet(doc.obsojeni, "//table")
  
  # Iz druge tabele dobimo seznam vrstic (<tr>) neposredno pod
  # trenutnim vozliščem
  vrstice <- getNodeSet(tabele[[1]], ".//tr")

  
  # Seznam vrstic pretvorimo v seznam (znakovnih) vektorjev
  # s porezanimi vsebinami celic (<td>) neposredno pod trenutnim vozliščem
  seznam <- lapply(vrstice[5:length(vrstice)-1], stripByPath, "./td")
  
  # Iz seznama vrstic naredimo matriko
  matrika <- matrix(unlist(seznam), nrow=length(seznam), byrow=TRUE)
  
  # Imena stolpcev matrike dobimo iz celic (<th>) glave (prve vrstice) prve tabele
  colnames(matrika) <- 2006:2013
  
  imena <- unlist(lapply(vrstice[5:length(vrstice)-1], stripByPath, "./th"))
  
  # Podatke iz matrike spravimo v razpredelnico
  return(data.frame(apply(matrika, 2, as.numeric), row.names=imena))
}