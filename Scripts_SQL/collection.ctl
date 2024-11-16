LOAD DATA
INFILE *
APPEND
INTO TABLE Collection
FIELDS TERMINATED BY "," OPTIONALLY ENCLOSED BY '"'
(nCollection, nomCollection, themeCollection, saison, nbrTenues, nCreateur, nomMaisonMode)
BEGINDATA
31, "Ombres Mystiques", "Mystère et Enchantement", "Printemps/Ete", 0, 30, "Chanel"
32, "Voyage Celeste", "Inspiration Astrale", "Automne/Hiver", 0, 29, "Chanel"
33, "Lueurs d'Aurore", "Reflets de l'Aube", "Printemps/Ete", 0, 28, "Dior"
