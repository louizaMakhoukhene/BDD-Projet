--Assister journaliste ctl
LOAD DATA
INFILE *
APPEND
INTO TABLE AssisterJ
FIELDS TERMINATED BY "," OPTIONALLY ENCLOSED BY '"'
(
    heureDepart TIMESTAMP "YYYY-MM-DD HH24:MI:SS", 
    heureArrivee TIMESTAMP "YYYY-MM-DD HH24:MI:SS", 
    nJournaliste, 
    nDefile)
BEGINDATA
"1985-06-15 16:15:00", "1985-06-15 18:45:00", 1, 1
