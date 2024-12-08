--Assister Createur ctl
LOAD DATA
INFILE *
APPEND
INTO TABLE AssisterC
FIELDS TERMINATED BY "," OPTIONALLY ENCLOSED BY '"'
( heureDepart, heureArrivee, nDefile, nCreateur)
BEGINDATA