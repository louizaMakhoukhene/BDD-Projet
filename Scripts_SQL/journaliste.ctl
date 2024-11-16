-- journaliste.ctl
LOAD DATA
INFILE *
APPEND
INTO TABLE Journaliste
FIELDS TERMINATED BY "," OPTIONALLY ENCLOSED BY '"'
(nJournaliste, nom, prenom, media, specialite, telephone, mail)
BEGINDATA
31, "Daniel", "Pereira", "ENTV", "Economie", "1234567801", "daniel.p@example.com"
