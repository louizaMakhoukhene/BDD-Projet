-- journaliste.ctl
LOAD DATA
INFILE *
APPEND
INTO TABLE Journaliste
FIELDS TERMINATED BY "," OPTIONALLY ENCLOSED BY '"'
(nJournaliste, nom, prenom, media, specialite, telephone, mail)
BEGINDATA
31, "Daniel", "Pereira", "ENTV", "Economie", "1234567801", "daniel.p@example.com"
1, "Dupont", "Alice", "Le Monde", "Mode", "0123456789", "alice.dupont@example.com"
2, "Martin", "Julien", "France 24", "Culture", "0234567890", "julien.martin@example.com"
3, "Leroy", "Camille", "Elle", "Societe", "0345678901", "camille.leroy@example.com"
4, "Moreau", "Paul", "Le Figaro", "Politique", "0456789012", "paul.moreau@example.com"
5, "Garnier", "Marie", "Vogue", "Mode", "0567890123", "marie.garnier@example.com"
6, "Bernard", "Lucas", "L'Express", "Economie", "0678901234", "lucas.bernard@example.com"
7, "Lemoine", "Sophie", "Telerama", "Critique", "0789012345", "sophie.lemoine@example.com"
8, "Fournier", "Juliette", "Marianne", "Culture", "0890123456", "juliette.fournier@example.com"
9, "Rousseau", "Antoine", "Liberation", "Societe", "0901234567", "antoine.rousseau@example.com"
10, "Pichon", "Nicolas", "Le Parisien", "Politique", "1012345678", "nicolas.pichon@example.com"
11, "Giraud", "Laura", "Paris Match", "Mode", "1123456789", "laura.giraud@example.com"
12, "Guillaume", "Maxime", "France Inter", "Actualites", "1234567890", "maxime.guillaume@example.com"
13, "Lefevre", "Zoe", "Arte", "Culture", "2345678901", "zoe.lefevre@example.com"
14, "Fleury", "Julien", "RFI", "Economie", "3456789012", "julien.fleury@example.com"
15, "Boucher", "Clara", "BFMTV", "Actualites", "4567890123", "clara.boucher@example.com"
16, "Vasseur", "Thomas", "CNews", "Societe", "5678901234", "thomas.vasseur@example.com"
17, "Leblanc", "Emilie", "M6", "Mode", "6789012345", "emilie.leblanc@example.com"
18, "Colin", "Vincent", "TF1", "Culture", "7890123456", "vincent.colin@example.com"
19, "Renaud", "Alice", "Le Journal du Dimanche", "Critique", "8901234567", "alice.renaud@example.com"
20, "Dumas", "Pierre", "L'Observateur", "Politique", "9012345678", "pierre.dumas@example.com"
21, "Lemoine", "Celine", "La Croix", "Religion", "0123456780", "celine.lemoine@example.com"
22, "Noel", "Bastien", "Les Echos", "Economie", "1234567801", "bastien.noel@example.com"
23, "Charpentier", "Sophie", "Le Point", "Politique", "2345678902", "sophie.charpentier@example.com"
24, "Giraud", "Etienne", "Les Inrockuptibles", "Culture", "3456789013", "etienne.giraud@example.com"
25, "Delaunay", "Louis", "CNews", "Actualites", "4567890124", "louis.delaunay@example.com"
26, "Richard", "Juliette", "BFM Business", "Economie", "5678901235", "juliette.richard@example.com"
27, "Ferry", "Alexandre", "M6", "Actualites", "6789012346", "alexandre.ferry@example.com"
28, "Laurent", "Chloe", "France 3", "Societe", "7890123457", "chloe.laurent@example.com"
29, "Lamy", "Marc", "Radio Nova", "Culture", "8901234568", "marc.lamy@example.com"
30, "Gallet", "Celine", "Arte", "Critique", "9012345679", "celine.gallet@example.com"
