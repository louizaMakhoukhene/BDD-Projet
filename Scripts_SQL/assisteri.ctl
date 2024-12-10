LOAD DATA
INFILE *
APPEND
INTO TABLE AssisterI
FIELDS TERMINATED BY "," OPTIONALLY ENCLOSED BY '"'
(
heureDepart TIMESTAMP "YYYY-MM-DD HH24:MI:SS",
heureArrivee TIMESTAMP "YYYY-MM-DD HH24:MI:SS",
nDefile, 
nInvite
)
BEGINDATA
"1985-06-15 16:25:00", "1985-06-15 18:45:00", 1, 31
"1987-07-15 15:50:00", "1987-07-15 18:10:00", 2, 32
"1990-09-10 17:00:00", "1990-09-10 19:15:00", 3, 1
"1990-03-22 15:35:00", "1990-03-22 18:00:00", 4, 2
"1993-01-10 16:00:00", "1993-01-10 18:00:00", 5, 3
"1992-01-30 16:50:00", "1992-01-30 18:40:00", 6, 4
"1994-03-05 15:45:00", "1994-03-05 18:00:00", 7, 5
"1996-11-20 16:20:00", "1996-11-20 18:40:00", 8, 6
"1999-06-10 15:55:00", "1999-06-10 18:05:00", 9, 7
"1995-02-05 16:00:00", "1995-02-05 18:10:00", 10, 8
"1992-08-01 15:45:00", "1992-08-01 18:00:00", 11, 9
"1996-03-15 15:50:00", "1996-03-15 18:10:00", 12, 10
"1999-04-12 16:30:00", "1999-04-12 18:30:00", 13, 11
"1991-02-15 16:00:00", "1991-02-15 18:20:00", 14, 12
"1993-06-10 15:30:00", "1993-06-10 17:45:00", 15, 13
"1994-11-12 16:25:00", "1994-11-12 18:45:00", 16, 14
"1997-05-23 15:55:00", "1997-05-23 18:15:00", 17, 15
"1994-12-01 15:50:00", "1994-12-01 18:10:00", 18, 16
"1995-06-20 16:10:00", "1995-06-20 18:25:00", 19, 17
"1994-08-22 15:40:00", "1994-08-22 17:55:00", 20, 18
"1996-03-10 15:55:00", "1996-03-10 18:20:00", 21, 19
"1994-12-02 16:10:00", "1994-12-02 18:25:00", 22, 20
"1995-09-25 15:50:00", "1995-09-25 18:10:00", 23, 21
"1996-03-15 16:05:00", "1996-03-15 18:30:00", 24, 22
"1999-05-06 16:15:00", "1999-05-06 18:30:00", 25, 23
"1995-04-12 16:40:00", "1995-04-12 18:55:00", 26, 24
"1997-09-01 15:45:00", "1997-09-01 18:10:00", 27, 25
"1997-02-10 15:45:00", "1997-02-10 18:00:00", 28, 26
"1997-01-30 15:50:00", "1997-01-30 18:05:00", 29, 27
"1995-12-01 16:10:00", "1995-12-01 18:25:00", 30, 28