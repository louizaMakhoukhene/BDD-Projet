LOAD DATA
INFILE *
APPEND
INTO TABLE Tenue
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
(nTenue, taille, prix, nomTenue, description, categorieTenue, nCollection, nCreateur)
BEGINDATA
