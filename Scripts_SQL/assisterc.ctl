--Assister Createur ctl
LOAD DATA
INFILE *
APPEND
INTO TABLE AssisterC
FIELDS TERMINATED BY "," OPTIONALLY ENCLOSED BY '"'
( 
heureDepart TIMESTAMP "YYYY-MM-DD HH24:MI:SS", 
heureArrivee TIMESTAMP "YYYY-MM-DD HH24:MI:SS", 
nDefile, 
nCreateur
)
BEGINDATA
"1985-06-15 16:20:00", "1985-06-15 18:50:00", 1, 1