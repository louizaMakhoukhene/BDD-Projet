-- sponsor.ctl
LOAD DATA
INFILE *
APPEND
INTO TABLE Sponsor
FIELDS TERMINATED BY "," OPTIONALLY ENCLOSED BY '"'
(nSponsor, nomSponsor, typeSponsor, email, telephone)
BEGINDATA
31, "Danone", "Mode", "contact@danone.com", "0345678901"
32, "Cevital", "Beaute", "support@cevital.com", "0456789012"
