# Analiza podatkov s programom R, 2014/15


Avtor: Katarina Černe

Repozitorij z gradivi pri predmetu APPR v študijskem letu 2014/15.

## Tematika

Pri predmetu ANPP sem si za temo projekta izbrala Obsojene fizične osebe po občinah stalnega prebivališča, Slovenija.

Analizirala bom, kje v Sloveniji je največ obsojenih, v katerih občinah procent obsojenih najbolj narašča in kje najbolj pada od leta 2006 do leta 2013. Iskala bom, če so kakšne povezave med obsojenimi ter brezposelnostjo in med diplomanti.


Viri podatkov: 

*Obsojene fizične osebe: http://pxweb.stat.si/pxweb/Dialog/varval.asp?ma=1372201s&ti=&path=../Database/Dem_soc/13_kriminaliteta/01_statistika_toz_sodisc/10_13722_obsojene_kazalniki/&lang=2

*Diplomanti: http://pxweb.stat.si/pxweb/Dialog/varval.asp?ma=0955405S&ti=Diplomanti+terciarnega+izobra%9Eevanja+po+ob%E8ini+stalnega+prebivali%9A%E8a%2C+Slovenija&path=../Database/Dem_soc/09_izobrazevanje/08_terciarno_izobraz/02_09554_diplomanti_splosno/&lang=2

*Delovno aktivno prebivalstvo in brezposelnost: http://pxweb.stat.si/pxweb/Dialog/varval.asp?ma=0700960S&ti=&path=../Database/Dem_soc/07_trg_dela/05_akt_preb_po_regis_virih/01_07009_aktivno_preb_mesecno/&lang=2

Cilj projekta je skozi analizo podatkov spoznati program R.

## Program

Glavni program se nahaja v datoteki `projekt.r`. Ko ga poženemo, se izvedejo
programi, ki ustrezajo drugi, tretji in četrti fazi projekta:

* obdelava, uvoz in čiščenje podatkov: `uvoz/uvoz.r`
* analiza in vizualizacija podatkov: `vizualizacija/vizualizacija.r`
* napredna analiza podatkov: `analiza/analiza.r`

Vnaprej pripravljene funkcije se nahajajo v datotekah v mapi `lib/`. Podatkovni
viri so v mapi `podatki/`. Slike, ki jih program naredi, se shranijo v mapo
`slike/`. Zemljevidi v obliki SHP, ki jih program pobere, se shranijo v mapo
`zemljevid/`.

## Poročilo

Poročilo se nahaja v mapi `porocilo/`. Za izdelavo poročila v obliki PDF je
potrebno datoteko `porocilo/porocilo.tex` prevesti z LaTeXom. Pred tem je
potrebno pognati program, saj so v poročilu vključene slike iz mape `slike/`.
