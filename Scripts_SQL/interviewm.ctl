--Interview mannequin ctl
LOAD DATA
INFILE *
APPEND
INTO TABLE InterviewM
FIELDS TERMINATED BY "," OPTIONALLY ENCLOSED BY '"'
( nInterview, heureDebut, heureFin, nJournaliste, nMannequin)
BEGINDATA