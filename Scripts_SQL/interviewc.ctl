--Interview createur ctl
LOAD DATA
INFILE *
APPEND
INTO TABLE InterviewC
FIELDS TERMINATED BY "," OPTIONALLY ENCLOSED BY '"'
( nInterview, heureDebut, heureFin, nJournaliste, nCreateur)
BEGINDATA
1,