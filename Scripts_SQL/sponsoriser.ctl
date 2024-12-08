--Sponsoriser ctl
LOAD DATA
INFILE *
APPEND
INTO TABLE Sponsoriser
FIELDS TERMINATED BY "," OPTIONALLY ENCLOSED BY '"'
( dateSponsor, typeSponsor, nSponsor , nDefile)
BEGINDATA