--Assister Createur ctl
LOAD DATA
INFILE *
APPEND
INTO TABLE AssisterC
FIELDS TERMINATED BY "," OPTIONALLY ENCLOSED BY '"'
( heureDepart, heureArrivee, nDefile, nCreateur)
BEGINDATA
"1985-06-15 16:20:00", "1985-06-15 18:50:00", 1, 1