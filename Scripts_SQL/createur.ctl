-- createur.ctl
LOAD DATA
INFILE *
APPEND
INTO TABLE Createur
FIELDS TERMINATED BY "," OPTIONALLY ENCLOSED BY '"'
(nCreateur, prenom, nom, dateNaissance "TO_DATE(:dateNaissance, 'YYYY-MM-DD')", nationalite, anneeExperienceCreateur, nomMaisonMode)
BEGINDATA
1, "Alice", "Dupont", "1985-06-15", "Italienne", 10, "Chanel"
2, "Benjamin", "Martin", "1990-03-22", "Francais", 8, "Dior"
3, "Clara", "Leroy", "1988-11-05", "Anglaise", 12, "Louis Vuitton"
4, "David", "Bernard", "1992-01-30", "Australien", 6, "Gucci"
5, "Emma", "Rousseau", "1980-04-10", "Russe", 15, "Prada"
6, "Francois", "Girard", "1983-07-25", "Russe", 12, "Versace"
7, "Gabrielle", "Parker", "1989-08-18", "Allemand", 7, "Fendi"
8, "Henri", "Lafleur", "1987-05-12", "Malien", 9, "Balenciaga"
9, "Isabelle", "Moreau", "1991-09-30", "Norvegienne", 5, "Givenchy"
10, "Julien", "Benoit", "1984-12-20", "Francais", 11, "Hermes"
11, "Karine", "Dufresne", "1986-10-05", "Francaise", 8, "Marc Jacobs"
12, "Louis", "Chevalier", "1993-02-17", "Argentin", 4, "Saint Laurent"
13, "Marie", "Gautier", "1981-08-14", "Colombienne", 14, "Dolce Gabbana"
14, "Nicolas", "Fischer", "1989-11-11", "Canadien", 6, "Miu Miu"
15, "Olivia", "Simon", "1982-07-23", "Japonaise", 13, "Lacoste"
16, "Pierre", "Blanc", "1990-01-18", "Algerien", 8, "Kenzo"
17, "Quentin", "Caron", "1995-03-08", "Francais", 3, "Tommy Hilfiger"
18, "Rachel", "Garnier", "1988-12-12", "Francaise", 9, "Marc Jacobs"
19, "Sebastien", "Pichon", "1984-06-27", "Italien", 10, "Moschino"
20, "Tatiana", "Laurent", "1991-05-30", "Italienne", 5, "Isabel Marant"
21, "Ulysse", "Faure", "1992-09-25", "Italien", 4, "Moschino"
22, "Veronique", "Briand", "1987-04-14", "Francaise", 11, "Ralph Lauren"
23, "William", "Bourgeois", "1990-10-10", "Francais", 7, "Givenchy"
24, "Xavier", "Clement", "1985-03-03", "Tunisien", 9, "Bottega Veneta"
25, "Yasmine", "Sorel", "1983-11-19", "Marocaine", 12, "Ermenegildo Zegna"
26, "Zacharie", "Gros", "1994-02-01", "Turque", 2, "Balenciaga"
27, "Amelie", "Bonnet", "1988-08-27", "Algerienne", 7, "Alexander McQueen"
28, "Boris", "Vasseur", "1992-05-09", "Indien", 5, "Givenchy"
29, "Cecile", "Marin", "1985-01-15", "Belge", 10, "Burberry"
30, "Dorian", "Renaud", "1984-06-20", "Albanaise", 12, "Armani"
31, "Jamal", "Maouchan", "1982-11-30", "Française", 12, "Chanel"
32, "Elyes", "Auchan", "1987-07-10", "Belge", 6, "Salvatore Ferragamo"