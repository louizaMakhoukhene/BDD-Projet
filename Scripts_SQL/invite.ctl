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
1, "Dupont", "Alice", "1990-01-15", "Francaise", "Styliste"
2, "Martin", "Julien", "1985-05-20", "Francais", "Designer"
3, "Leroy", "Camille", "1992-07-30", "Francaise", "Journaliste"
4, "Moreau", "Paul", "1988-02-12", "Francais", "Photographe"
5, "Garnier", "Marie", "1987-04-22", "Francaise", "Modele"
6, "Bernard", "Lucas", "1995-08-05", "Francais", "Directeur artistique"
7, "Lemoine", "Sophie", "1991-03-19", "Francaise", "Redactrice"
8, "Fournier", "Juliette", "1986-06-10", "Francaise", "Couturiere"
9, "Rousseau", "Antoine", "1989-09-25", "Francais", "Charge de communication"
10, "Pichon", "Nicolas", "1984-11-11", "Francais", "Styliste"
11, "Giraud", "Laura", "1994-12-30", "Francaise", "Celebrite"
12, "Guillaume", "Maxime", "1990-02-03", "Francais", "Artiste"
13, "Lefevre", "Zoe", "1993-07-21", "Francaise", "Influenceuse"
14, "Fleury", "Julien", "1986-05-14", "Francais", "Directeur"
15, "Boucher", "Clara", "1988-09-08", "Francaise", "Sociologue"
16, "Vasseur", "Thomas", "1995-01-23", "Francais", "Ecrivain"
17, "Leblanc", "Emilie", "1992-08-17", "Francaise", "Directrice"
18, "Colin", "Vincent", "1990-03-29", "Francais", "Architecte"
19, "Renaud", "Alice", "1987-11-05", "Francaise", "Vendeuse"
20, "Dumas", "Pierre", "1984-02-28", "Francais", "Producteur"
21, "Lemoine", "Celine", "1991-07-19", "Francaise", "Artiste"
22, "Noel", "Bastien", "1993-10-11", "Francais", "Musicien"
23, "Charpentier", "Sophie", "1992-04-17", "Francaise", "Danseuse"
24, "Giraud", "Etienne", "1988-12-12", "Francais", "Critique"
25, "Delaunay", "Louis", "1985-06-15", "Francais", "Scenariste"
26, "Richard", "Juliette", "1990-09-09", "Francaise", "Comedienne"
27, "Ferry", "Alexandre", "1994-11-21", "Francais", "Consultant"
28, "Laurent", "Chloe", "1991-08-01", "Francaise", "Photographe"
29, "Lamy", "Marc", "1995-03-13", "Francais", "Editeur"
30, "Gallet", "Celine", "1993-05-20", "Francaise", "Graphiste"
