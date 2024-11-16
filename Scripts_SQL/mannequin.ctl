-- mannequin.ctl
LOAD DATA
INFILE *
APPEND
INTO TABLE Mannequin
FIELDS TERMINATED BY "," OPTIONALLY ENCLOSED BY '"'
(nMannequin, nom, prenom, age, taille, poids, nationalite, genre, morphologie)
BEGINDATA
31, "Slimane", "Bouaroua", 22, 178.00, 70.00, "Algerienne", "Masculin", "Sablier"
32, "Louiza", "Makhoukhene", 22, 175.00, 58.00, "Kabyle", "Feminin", "Rectangle"
