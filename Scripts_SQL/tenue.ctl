LOAD DATA
INFILE *
APPEND
INTO TABLE Tenue
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
(nTenue, taille, prix, nomTenue, description, categorieTenue, nCollection, nCreateur)
BEGINDATA
1, 38.00, 2200.00, "Robe en soie", "Robe fluide en soie pour l'été", "Soirée", 31, 30
2, 39.00, 2400.00, "Veste en tweed", "Veste en tweed à col en fourrure", "Formelle", 31, 30
3, 40.00, 2500.00, "Robe longue", "Robe longue en satin rouge pour une soirée", "Soirée", 31, 30
4, 37.50, 1800.00, "Blouse en dentelle", "Blouse en dentelle noire pour une soirée chic", "Soirée", 31, 30
5, 38.50, 2000.00, "Jupe en cuir", "Jupe en cuir noir pour un look audacieux", "Casual", 31, 30
6, 41.00, 2100.00, "Pantalon taille haute", "Pantalon taille haute pour un look classique", "Casual", 31, 30
7, 42.00, 2300.00, "Robe ajustée", "Robe ajustée en velours", "Soirée", 31, 30
8, 39.50, 2400.00, "Top en soie", "Top en soie blanche pour l'été", "Casual", 31, 30
9, 41.50, 2600.00, "Manteau en laine", "Manteau en laine pour l'hiver", "Hiver", 31, 30
10, 42.50, 2500.00, "Robe de cocktail", "Robe de cocktail en crêpe de soie", "Soirée", 31, 30
11, 38.00, 1900.00, "Veste en lin", "Veste en lin élégante pour l'été", "Casual", 32, 29
12, 39.50, 2000.00, "Robe midi", "Robe midi avec un motif floral, idéale pour un déjeuner", "Casual", 32, 29
13, 40.00, 2100.00, "Chemise à manches longues", "Chemise élégante à manches longues en coton", "Formelle", 32, 29
14, 41.50, 2200.00, "Pantalon à rayures", "Pantalon à rayures fines pour un look professionnel", "Formelle", 32, 29
15, 42.00, 2300.00, "Top en dentelle", "Top en dentelle pour un look chic et sophistiqué", "Casual", 32, 29
16, 38.00, 1900.00, "Jupe en cuir", "Jupe en cuir noir pour un look chic", "Casual", 32, 29
17, 40.50, 2100.00, "Robe à col haut", "Robe à col haut pour un look raffiné", "Formelle", 32, 29
18, 39.00, 2000.00, "Blouse en crêpe", "Blouse en crêpe légère pour l'été", "Casual", 32, 29
19, 41.00, 2400.00, "Manteau en laine", "Manteau long en laine, parfait pour les journées froides", "Hiver", 32, 29
20, 43.00, 2500.00, "Robe fluide", "Robe fluide en satin pour un look estival", "Soirée", 32, 29
21, 38.50, 1800.00, "Robe d'été", "Robe légère d'été en coton", "Casual", 33, 28
22, 40.00, 2100.00, "Veste en tweed", "Veste en tweed pour un look chic et intemporel", "Formelle", 33, 28
23, 39.00, 1900.00, "Robe cocktail", "Robe cocktail en soie rouge, élégante et chic", "Soirée", 33, 28
24, 41.00, 2300.00, "Pantalon en laine", "Pantalon en laine pour un look de travail", "Formelle", 33, 28
25, 42.00, 2400.00, "Top en soie", "Top en soie avec des détails en dentelle", "Formelle", 33, 28
26, 43.00, 2500.00, "Robe en satin", "Robe en satin pour une soirée élégante", "Soirée", 33, 28
27, 37.50, 1800.00, "Jupe en lin", "Jupe légère en lin pour l'été", "Casual", 33, 28
28, 39.50, 2000.00, "Blouse en chiffon", "Blouse en chiffon fluide pour une sortie", "Casual", 33, 28
29, 40.50, 2200.00, "Robe en cuir", "Robe ajustée en cuir pour un look audacieux", "Formelle", 33, 28
30, 41.00, 2300.00, "Manteau d'hiver", "Manteau d'hiver en laine, chaud et élégant", "Hiver", 33, 28
31, 40.00, 2200.00, "Robe en crêpe", "Robe en crêpe fluide pour une soirée chic", "Soirée", 1, 20
32, 39.00, 2100.00, "Veste en laine", "Veste en laine avec col en fourrure pour l'hiver", "Hiver", 1, 20
33, 42.50, 2300.00, "Robe bustier", "Robe bustier élégante pour un événement de gala", "Soirée", 1, 20
34, 41.00, 2000.00, "Pantalon de costume", "Pantalon de costume en laine, parfait pour le bureau", "Formelle", 1, 20
35, 40.00, 2100.00, "Chemise en soie", "Chemise en soie pour un look formel", "Formelle", 1, 20
36, 38.00, 1900.00, "Jupe en crêpe", "Jupe en crêpe pour un look élégant", "Casual", 1, 20
37, 39.50, 2200.00, "Robe en dentelle", "Robe en dentelle pour une occasion spéciale", "Soirée", 1, 20
38, 40.50, 2400.00, "Blazer cintré", "Blazer cintré pour un look professionnel", "Formelle", 1, 20
39, 42.00, 2300.00, "Robe en velours", "Robe en velours pour un look chic et confortable", "Soirée", 1, 20
40, 41.00, 2100.00, "Top en soie", "Top en soie pour un look élégant et sophistiqué", "Formelle", 1, 20
41, 38.00, 2000.00, "Robe en soie", "Robe fluide en soie pour l'été", "Soirée", 2, 19
42, 39.50, 2100.00, "Veste en tweed", "Veste en tweed à col en fourrure", "Formelle", 2, 19
43, 41.00, 2300.00, "Robe en satin", "Robe en satin rouge pour un dîner élégant", "Soirée", 2, 19
44, 40.50, 2200.00, "Pantalon de bureau", "Pantalon de bureau classique en laine", "Formelle", 2, 19
45, 39.00, 2100.00, "Top en dentelle", "Top en dentelle noire pour une soirée chic", "Soirée", 2, 19
46, 38.00, 2000.00, "Jupe en cuir", "Jupe en cuir pour un look audacieux", "Casual", 2, 19
47, 41.50, 2500.00, "Robe de soirée", "Robe longue de soirée en velours", "Soirée", 2, 19
48, 40.00, 2200.00, "Blouse en soie", "Blouse en soie légère pour l'été", "Casual", 2, 19
49, 42.00, 2400.00, "Manteau en laine", "Manteau en laine élégant pour l'hiver", "Hiver", 2, 19
50, 43.00, 2500.00, "Robe en crêpe", "Robe élégante en crêpe pour un gala", "Soirée", 2, 19
51, 38.00, 2200.00, "Robe en velours", "Robe en velours rouge profond, parfaite pour une soirée", "Soirée", 3, 18
52, 39.00, 2300.00, "Veste en laine", "Veste en laine noire pour un look sophistiqué", "Formelle", 3, 18
53, 40.00, 2400.00, "Robe droite", "Robe droite avec des détails métalliques", "Soirée", 3, 18
54, 41.00, 2500.00, "Pantalon en cuir", "Pantalon en cuir noir pour un look urbain", "Casual", 3, 18
55, 42.00, 2600.00, "Blouse en satin", "Blouse fluide en satin avec broderie dorée", "Casual", 3, 18
56, 43.00, 2700.00, "Robe moulante", "Robe moulante en crêpe avec décolleté en V", "Soirée", 3, 18
57, 42.50, 2800.00, "Robe de soirée", "Robe de soirée en satin noir avec perles", "Soirée", 3, 18
58, 41.50, 2300.00, "Jupe en soie", "Jupe en soie grise pour un look sophistiqué", "Casual", 3, 18
59, 44.00, 2500.00, "Manteau en laine", "Manteau long en laine pour les mois froids", "Hiver", 3, 18
60, 45.00, 2600.00, "Robe de cocktail", "Robe de cocktail en satin rouge pour un événement chic", "Soirée", 3, 18
61, 38.00, 2200.00, "Robe en soie", "Robe fluide en soie pour un look printanier", "Soirée", 4, 17
62, 39.50, 2300.00, "Veste en velours", "Veste en velours bordeaux pour un look élégant", "Formelle", 4, 17
63, 40.00, 2400.00, "Top en dentelle", "Top en dentelle noire avec détails dorés", "Casual", 4, 17
64, 41.00, 2500.00, "Jupe longue", "Jupe longue à motif floral pour une soirée d'été", "Soirée", 4, 17
65, 42.00, 2600.00, "Blouse en satin", "Blouse en satin ivoire avec détails brodés", "Casual", 4, 17
66, 43.00, 2700.00, "Robe longue", "Robe longue en soie avec paillettes dorées", "Soirée", 4, 17
67, 44.00, 2800.00, "Pantalon en laine", "Pantalon en laine pour une journée d'hiver", "Casual", 4, 17
68, 45.00, 2900.00, "Robe de cocktail", "Robe de cocktail avec strass pour briller en soirée", "Soirée", 4, 17
69, 46.00, 3000.00, "Manteau en fourrure", "Manteau en fourrure pour les soirées d'hiver", "Hiver", 4, 17
70, 47.00, 3100.00, "Robe midi", "Robe midi avec décolleté plongeant pour une soirée chic", "Soirée", 4, 17
71, 38.00, 2300.00, "Robe vintage", "Robe vintage à pois pour une sortie décontractée", "Casual", 5, 16
72, 39.50, 2400.00, "Veste en cuir", "Veste en cuir vintage avec fermetures dorées", "Formelle", 5, 16
73, 40.00, 2500.00, "Robe midi", "Robe midi en crêpe pour une soirée formelle", "Soirée", 5, 16
74, 41.00, 2600.00, "Blouse à volants", "Blouse à volants en coton léger", "Casual", 5, 16
75, 42.00, 2700.00, "Jupe en tweed", "Jupe en tweed pour une sortie chic", "Casual", 5, 16
76, 43.00, 2800.00, "Robe en velours", "Robe en velours vert émeraude pour une soirée", "Soirée", 5, 16
77, 44.00, 2900.00, "Top en soie", "Top en soie pour une soirée élégante", "Casual", 5, 16
78, 45.00, 3000.00, "Robe de cocktail", "Robe de cocktail en satin doré", "Soirée", 5, 16
79, 46.00, 3100.00, "Manteau en laine", "Manteau long en laine avec boutons dorés", "Hiver", 5, 16
80, 47.00, 3200.00, "Pantalon en velours", "Pantalon en velours côtelé pour l'hiver", "Casual", 5, 16
81, 36.00, 2200.00, "Robe en lin", "Robe en lin beige légère et fluide, idéale pour l'été", "Casual", 9, 12
82, 37.50, 2300.00, "Veste en denim", "Veste en denim oversize avec broderies florales", "Casual", 9, 12
83, 38.00, 2400.00, "Blouse en coton", "Blouse blanche en coton avec manches bouffantes", "Casual", 9, 12
84, 39.00, 2500.00, "Jupe en cuir", "Jupe en cuir marron pour un look rock et bohème", "Casual", 9, 12
85, 40.00, 2600.00, "Robe midi", "Robe midi à fleurs pour un look printanier", "Soirée", 9, 12
86, 41.00, 2700.00, "Top en satin", "Top en satin rose pâle avec détails en dentelle", "Casual", 9, 12
87, 42.00, 2800.00, "Pantalon taille haute", "Pantalon taille haute beige en coton pour une silhouette élancée", "Casual", 9, 12
88, 43.00, 2900.00, "Robe portefeuille", "Robe portefeuille en soie pour une soirée élégante", "Soirée", 9, 12
89, 44.00, 3000.00, "Manteau léger", "Manteau en laine léger à double boutonnage pour les soirées fraîches", "Hiver", 9, 12
90, 45.00, 3100.00, "Robe de soirée", "Robe de soirée en velours bleu pour une occasion spéciale", "Soirée", 9, 12
91, 38.00, 2500.00, "Robe en soie", "Robe en soie noire avec des éclats d'ébène pour un look glamour", "Soirée", 10, 11
92, 39.50, 2600.00, "Veste en laine", "Veste en laine noir avec des broderies dorées et des boutons en ébène", "Formelle", 10, 11
93, 40.00, 2700.00, "Pantalon en cuir", "Pantalon en cuir noir pour un look chic et intemporel", "Casual", 10, 11
94, 41.00, 2800.00, "Top en satin", "Top en satin noir avec un col bateau pour une silhouette élégante", "Casual", 10, 11
95, 42.00, 2900.00, "Robe droite", "Robe droite en crêpe avec des détails en cuir noir", "Soirée", 10, 11
96, 43.00, 3000.00, "Blouse à volants", "Blouse en soie avec volants en satin pour un look raffiné", "Casual", 10, 11
97, 44.00, 3100.00, "Manteau en cachemire", "Manteau long en cachemire noir pour les soirées d'hiver", "Hiver", 10, 11
98, 45.00, 3200.00, "Jupe en velours", "Jupe en velours noir pour une allure luxueuse", "Casual", 10, 11
99, 46.00, 3300.00, "Robe de cocktail", "Robe de cocktail en satin et ébène, pour un look éclatant", "Soirée", 10, 11