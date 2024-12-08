--Assister Invite ctl
LOAD DATA
INFILE *
APPEND
INTO TABLE AssisterI
FIELDS TERMINATED BY "," OPTIONALLY ENCLOSED BY '"'
( heureDepart, heureArrivee, nDefile, nInvite)
BEGINDATA