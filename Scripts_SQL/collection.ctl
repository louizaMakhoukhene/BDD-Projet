--Collection ctl
LOAD DATA
INFILE *
APPEND
INTO TABLE Collection
FIELDS TERMINATED BY "," OPTIONALLY ENCLOSED BY '"'
(nCollection, nomCollection, themeCollection, saison, nbrTenues, nCreateur, nomMaisonMode)
BEGINDATA
1, "Echos Sauvages", "Evasion et Nature", "Printemps/Ete", 0, 1, "Lacoste"
2, "Heritage Intemporel", "Elegance et Intemporalite", "Automne/Hiver", 0, 2, "Chanel"
3, "Metropole Brulante", "Moderne et Urbain", "Automne/Hiver", 0, 3, "Dior"
