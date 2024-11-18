-- createur.ctl
LOAD DATA
INFILE *
APPEND
INTO TABLE Createur
FIELDS TERMINATED BY "," OPTIONALLY ENCLOSED BY '"'
(nCreateur, prenom, nom, dateNaissance "TO_DATE(:dateNaissance, 'YYYY-MM-DD')", nationalite, anneeExperienceCreateur, nomMaisonMode)
BEGINDATA
31, "Jamal", "Maouchan", "1982-11-30", "Française", 12, "Chanel"
32, "Elyes", "Auchan", "1987-07-10", "Belge", 6, "Chanel"

