--Assister journaliste ctl
LOAD DATA
INFILE *
APPEND
INTO TABLE AssisterJ
FIELDS TERMINATED BY "," OPTIONALLY ENCLOSED BY '"'
( heureDepart, heureArrivee, nJournaliste, nDefile)
BEGINDATA