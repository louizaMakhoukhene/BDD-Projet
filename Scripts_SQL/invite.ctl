-- invite.ctl
LOAD DATA
INFILE *
APPEND
INTO TABLE Invite
FIELDS TERMINATED BY "," OPTIONALLY ENCLOSED BY '"'
(nInvite, nom, prenom, dateNaissance "TO_DATE(:dateNaissance, 'YYYY-MM-DD')", nationaliteInvite, profession)
BEGINDATA
31, "Lucas", "Vasques", "1990-01-15", "Francaise", "Styliste"
32, "Jude", "Alvaro", "1985-05-20", "Francais", "Designer"
