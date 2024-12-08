--Interview invite ctl
LOAD DATA
INFILE *
APPEND
INTO TABLE InterviewI
FIELDS TERMINATED BY "," OPTIONALLY ENCLOSED BY '"'
( nInterview, heureDebut, heureFin, nJournaliste, nInvite)
BEGINDATA