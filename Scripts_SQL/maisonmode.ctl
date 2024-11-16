-- maisonmode.ctl
LOAD DATA
INFILE *
APPEND
INTO TABLE MaisonMode
FIELDS TERMINATED BY "," OPTIONALLY ENCLOSED BY '"'
(nomMaisonMode, nomFondateur, dateFondation "TO_DATE(:dateFondation, 'YYYY-MM-DD')", localisation, logo, siteWEB)
BEGINDATA
"UVSQ", "Beatrice Finance", "2012-12-12", "Versailles, France", "uvsq.png", "https://www.uvsq.com"
"ESGI", "Frederic Sanaenes", "2023-09-16", "Nation, France", "esgi.png", "https://www.esgi.com"
