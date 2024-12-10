LOAD DATA
INFILE *
APPEND
INTO TABLE Tenue
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
(nTenue, taille, prix, nomTenue, description, categorieTenue, nCollection, nCreateur)
BEGINDATA
1, 38.00, 2200.00, "Robe en soie", "Robe fluide en soie pour l'été", "Soirée", 31, 30