-- Sponsoriser ctl
LOAD DATA
INFILE *
APPEND
INTO TABLE Sponsoriser
FIELDS TERMINATED BY "," OPTIONALLY ENCLOSED BY '"'
(   dateSponsor DATE "YYYY-MM-DD",
    typeSponsor,
    nSponsor,
    nDefile)
BEGINDATA
"1985-06-15", "Mode", 31, 1