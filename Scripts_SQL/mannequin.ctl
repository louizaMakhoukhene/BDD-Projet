-- mannequin.ctl
LOAD DATA
INFILE *
APPEND
INTO TABLE Mannequin
FIELDS TERMINATED BY "," OPTIONALLY ENCLOSED BY '"'
(nMannequin, nom, prenom, age, taille, poids, nationalite, genre, morphologie)
BEGINDATA
31, "Slimane", "Bouaroua", 22, 178.00, 70.00, "Algerienne", "Masculin", "Sablier"
32, "Louiza", "Makhoukhene", 22, 175.00, 58.00, "Kabyle", "Feminin", "Rectangle"
1, "Hadid", "Gigi", 29, 178.00, 54.00, "Americaine", "Feminin", "Sablier"
2, "Jenner", "Kendall", 29, 179.00, 58.00, "Americaine", "Feminin", "Sablier"
3, "Hadid", "Bella", 28, 175.00, 55.00, "Americaine", "Feminin", "Sablier"
4, "Lima", "Adriana", 42, 178.00, 60.00, "Bresilienne", "Feminin", "Sablier"
5, "Banks", "Tyra", 50, 180.00, 61.00, "Americaine", "Feminin", "Sablier"
6, "Delevingne", "Cara", 31, 177.00, 52.00, "Britannique", "Feminin", "Sablier"
7, "Kroes", "Doutzen", 38, 178.00, 55.00, "Neerlandaise", "Feminin", "Sablier"
8, "Shayk", "Irina", 37, 178.00, 57.00, "Russe", "Feminin", "Sablier"
9, "Campbell", "Naomi", 54, 175.00, 56.00, "Britannique", "Feminin", "Sablier"
10, "Graham", "Ashley", 36, 175.00, 91.00, "Americaine", "Feminin", "Pomme"
11, "Dunn", "Jourdan", 33, 180.00, 55.00, "Britannique", "Feminin", "Sablier"
12, "Wen", "Liu", 35, 179.00, 50.00, "Chinoise", "Feminin", "Sablier"
13, "Smith", "Jasmine", 26, 175.00, 54.00, "Americaine", "Feminin", "Sablier"
14, "Bautista", "Rita", 32, 177.00, 58.00, "Espagnole", "Feminin", "Sablier"
15, "Stevens", "Megan", 30, 176.00, 59.00, "Britannique", "Feminin", "Sablier"
16, "Turlington", "Christy", 55, 178.00, 59.00, "Americaine", "Feminin", "Sablier"
17, "Soo", "Jing", 28, 175.00, 53.00, "Chinoise", "Feminin", "Sablier"
18, "O’Pry", "Sean", 34, 183.00, 74.00, "Americain", "Masculin", "Sablier"
19, "Gandy", "David", 43, 185.00, 85.00, "Britannique", "Masculin", "Sablier"
20, "Mackin", "Tom", 30, 180.00, 80.00, "Irlandais", "Masculin", "Sablier"
21, "Renn", "Ethan", 25, 183.00, 76.00, "Americain", "Masculin", "Sablier"
22, "Mason", "Jaden", 29, 182.00, 79.00, "Americain", "Masculin", "Sablier"
23, "Jagger", "Jasper", 38, 184.00, 82.00, "Britannique", "Masculin", "Sablier"
24, "Anderson", "Kieran", 27, 181.00, 77.00, "Australien", "Masculin", "Sablier"
25, "Hansen", "Lars", 32, 182.00, 85.00, "Danois", "Masculin", "Sablier"
26, "Gonzalez", "Pablo", 29, 180.00, 78.00, "Espagnol", "Masculin", "Sablier"
27, "Lin", "Hao", 26, 177.00, 70.00, "Chinois", "Masculin", "Sablier"
28, "Parker", "Jon", 34, 181.00, 75.00, "Americain", "Masculin", "Sablier"
29, "Santos", "Carlos", 30, 179.00, 77.00, "Bresilien", "Masculin", "Sablier"
30, "Chow", "Ken", 29, 182.00, 81.00, "Chinois", "Masculin", "Sablier"
