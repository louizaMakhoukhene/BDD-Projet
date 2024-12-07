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
100, 47.00, 3400.00, "Gilet en cachemire", "Gilet en cachemire noir avec boutons en métal pour une touche élégante", "Casual", 10, 11


101, 38.00, 2300.00, "Robe noire", "Robe noire en satin pour une soirée chic", "Soirée", 11, 10
102, 39.50, 2400.00, "Veste en cuir", "Veste en cuir noire pour un look urbain et moderne", "Casual", 11, 10
103, 40.00, 2500.00, "Pantalon en velours", "Pantalon en velours côtelé pour un look d'hiver élégant", "Casual", 11, 10
104, 41.00, 2600.00, "Top en tulle", "Top en tulle noir avec détails en sequins", "Soirée", 11, 10
105, 42.00, 2700.00, "Robe moulante", "Robe moulante en velours noir pour une allure sophistiquée", "Soirée", 11, 10
106, 43.00, 2800.00, "Blouse en soie", "Blouse en soie noire avec détails en dentelle", "Casual", 11, 10
107, 44.00, 2900.00, "Jupe en cuir", "Jupe en cuir noir pour un look chic et intemporel", "Casual", 11, 10
108, 45.00, 3000.00, "Robe de soirée", "Robe de soirée en satin rouge pour un événement spécial", "Soirée", 11, 10
109, 46.00, 3100.00, "Manteau en laine", "Manteau en laine noir pour les mois froids", "Hiver", 11, 10
110, 47.00, 3200.00, "Pantalon taille haute", "Pantalon taille haute noir pour une silhouette allongée", "Casual", 11, 10


111, 38.00, 2200.00, "Robe en dentelle", "Robe en dentelle blanche pour un look délicat", "Soirée", 12, 9
112, 39.50, 2300.00, "Veste en brocart", "Veste en brocart doré pour une allure royale", "Formelle", 12, 9
113, 40.00, 2400.00, "Blouse en soie", "Blouse en soie blanche avec broderies dorées", "Casual", 12, 9
114, 41.00, 2500.00, "Robe de cocktail", "Robe de cocktail en satin noir pour une soirée élégante", "Soirée", 12, 9
115, 42.00, 2600.00, "Jupe en tulle", "Jupe en tulle pour un look léger et féminin", "Casual", 12, 9
116, 43.00, 2700.00, "Robe à fleurs", "Robe à fleurs en crêpe pour un look printanier", "Soirée", 12, 9
117, 44.00, 2800.00, "Top en organza", "Top en organza pour une allure éthérée", "Casual", 12, 9
118, 45.00, 2900.00, "Manteau en velours", "Manteau en velours bleu pour l'hiver", "Hiver", 12, 9
119, 46.00, 3000.00, "Pantalon en cuir", "Pantalon en cuir noir pour un look moderne", "Casual", 12, 9
120, 47.00, 3100.00, "Robe longue", "Robe longue en satin blanc avec un décolleté profond", "Soirée", 12, 9


121, 38.00, 2100.00, "Robe en velours", "Robe en velours vintage couleur bordeaux, idéale pour l'automne", "Soirée", 13, 8
122, 39.50, 2200.00, "Blouse en satin", "Blouse en satin crème avec détails en dentelle", "Casual", 13, 8
123, 40.00, 2300.00, "Pantalon taille haute", "Pantalon taille haute noir à la coupe rétro", "Casual", 13, 8
124, 41.00, 2400.00, "Robe midi", "Robe midi à imprimé floral pour un look printanier", "Casual", 13, 8
125, 42.00, 2500.00, "Jupe en tweed", "Jupe en tweed classique avec des touches de doré", "Formelle", 13, 8
126, 43.00, 2600.00, "Veste en laine", "Veste en laine grise avec détails en cuir pour un look élégant", "Hiver", 13, 8
127, 44.00, 2700.00, "Robe de cocktail", "Robe de cocktail à sequins pour une soirée glamour", "Soirée", 13, 8
128, 45.00, 2800.00, "Top en crochet", "Top en crochet blanc avec détails bohèmes", "Casual", 13, 8
129, 46.00, 2900.00, "Manteau en laine", "Manteau en laine beige pour l'hiver avec une ceinture en cuir", "Hiver", 13, 8
130, 47.00, 3000.00, "Blazer en velours", "Blazer en velours bleu marine pour un look intemporel", "Formelle", 13, 8


131, 38.00, 2200.00, "Robe colorée", "Robe en coton colorée inspirée des œuvres d'art abstrait", "Casual", 14, 7
132, 39.50, 2300.00, "T-shirt graphique", "T-shirt avec un imprimé de pinceau inspiré des peintures modernes", "Casual", 14, 7
133, 40.00, 2400.00, "Pantalon fluide", "Pantalon fluide avec des éclats de couleurs vives", "Casual", 14, 7
134, 41.00, 2500.00, "Blouse à motifs", "Blouse à motifs géométriques dans des tons vifs", "Casual", 14, 7
135, 42.00, 2600.00, "Robe asymétrique", "Robe asymétrique avec des touches de peinture éclatantes", "Soirée", 14, 7
136, 43.00, 2700.00, "Jupe en lin", "Jupe en lin légère avec des détails artistiques", "Casual", 14, 7
137, 44.00, 2800.00, "Manteau en laine", "Manteau en laine multicolore inspiré de l'art moderne", "Hiver", 14, 7
138, 45.00, 2900.00, "Top en soie", "Top en soie avec imprimé artistique inspiré de peintures impressionnistes", "Casual", 14, 7
139, 46.00, 3000.00, "Robe longue", "Robe longue fluide avec des couleurs éclatantes et des détails abstraits", "Soirée", 14, 7
140, 47.00, 3100.00, "Veste en cuir", "Veste en cuir de couleur vive avec des détails artistiques", "Casual", 14, 7


141, 38.00, 2300.00, "Robe en soie", "Robe en soie dorée avec un décolleté profond pour une soirée d'exception", "Soirée", 15, 6
142, 39.50, 2400.00, "Veste en satin", "Veste en satin noir et or, idéale pour un look sophistiqué", "Formelle", 15, 6
143, 40.00, 2500.00, "Top en soie", "Top en soie beige avec broderies dorées pour une allure chic", "Casual", 15, 6
144, 41.00, 2600.00, "Pantalon en velours", "Pantalon en velours d'or pour une silhouette élégante", "Casual", 15, 6
145, 42.00, 2700.00, "Robe midi", "Robe midi dorée avec un léger voile, idéale pour les événements formels", "Soirée", 15, 6
146, 43.00, 2800.00, "Jupe en satin", "Jupe en satin dorée pour un look chic et lumineux", "Casual", 15, 6
147, 44.00, 2900.00, "Manteau en laine", "Manteau en laine beige avec doublure dorée pour l'hiver", "Hiver", 15, 6
148, 45.00, 3000.00, "Robe de cocktail", "Robe de cocktail or et soie pour une allure éblouissante", "Soirée", 15, 6
149, 46.00, 3100.00, "Blouse en satin", "Blouse en satin dorée avec de délicats motifs floraux", "Casual", 15, 6
150, 47.00, 3200.00, "Pantalon palazzo", "Pantalon palazzo doré pour une silhouette fluide et élégante", "Casual", 15, 6


151, 38.00, 2200.00, "Robe en laine", "Robe en laine orange automne pour une chaleur douce", "Casual", 16, 5
152, 39.50, 2300.00, "Jupe en tweed", "Jupe en tweed camel, parfaite pour la saison automnale", "Casual", 16, 5
153, 40.00, 2400.00, "Blouse en velours", "Blouse en velours bordeaux pour une allure chic", "Casual", 16, 5
154, 41.00, 2500.00, "Veste en laine", "Veste en laine couleur auburn, idéale pour l'automne", "Formelle", 16, 5
155, 42.00, 2600.00, "Robe midi", "Robe midi en tweed aux couleurs automnales pour un look élégant", "Soirée", 16, 5
156, 43.00, 2700.00, "Pantalon en laine", "Pantalon en laine beige pour une silhouette stylée et automnale", "Casual", 16, 5
157, 44.00, 2800.00, "Top en soie", "Top en soie moutarde pour un look lumineux", "Casual", 16, 5
158, 45.00, 2900.00, "Manteau en laine", "Manteau en laine gris pour affronter les premières fraîches", "Hiver", 16, 5
159, 46.00, 3000.00, "Robe en laine", "Robe en laine écarlate pour les soirées fraîches d'automne", "Soirée", 16, 5
160, 47.00, 3100.00, "Cardigan en cachemire", "Cardigan en cachemire beige pour un confort absolu", "Casual", 16, 5


161, 38.00, 2200.00, "Robe fluide", "Robe fluide couleur émeraude avec une coupe élégante et décontractée", "Casual", 17, 4
162, 39.50, 2300.00, "Blouse en satin", "Blouse en satin vert émeraude avec des détails en dentelle", "Casual", 17, 4
163, 40.00, 2400.00, "Jupe midi", "Jupe midi vert émeraude avec des imprimés floraux dorés", "Casual", 17, 4
164, 41.00, 2500.00, "Robe en dentelle", "Robe en dentelle émeraude pour un look féminin et raffiné", "Soirée", 17, 4
165, 42.00, 2600.00, "Pantalon palazzo", "Pantalon palazzo vert émeraude pour une silhouette fluide et chic", "Casual", 17, 4
166, 43.00, 2700.00, "Veste en velours", "Veste en velours vert profond avec des détails dorés", "Formelle", 17, 4
167, 44.00, 2800.00, "Top en soie", "Top en soie vert clair pour une touche de fraîcheur", "Casual", 17, 4
168, 45.00, 2900.00, "Manteau en laine", "Manteau en laine vert émeraude pour les journées fraîches", "Hiver", 17, 4
169, 46.00, 3000.00, "Robe de soirée", "Robe de soirée en velours vert émeraude avec des accents dorés", "Soirée", 17, 4
170, 47.00, 3100.00, "Cardigan en cachemire", "Cardigan en cachemire vert émeraude pour un look cosy", "Casual", 17, 4


171, 38.00, 2400.00, "Robe en soie noire", "Robe en soie noire avec un motif céleste pour une allure mystérieuse", "Soirée", 18, 3
172, 39.50, 2500.00, "Blouse à volants", "Blouse noire à volants avec des motifs inspirés de la nuit étoilée", "Casual", 18, 3
173, 40.00, 2600.00, "Pantalon en cuir", "Pantalon en cuir noir pour un look audacieux et moderne", "Casual", 18, 3
174, 41.00, 2700.00, "Robe longue", "Robe longue noire avec des détails brillants rappelant les étoiles", "Soirée", 18, 3
175, 42.00, 2800.00, "Veste en daim", "Veste en daim noir avec une finition élégante et un col haut", "Casual", 18, 3
176, 43.00, 2900.00, "Jupe plissée", "Jupe plissée noire avec une ceinture ornée de cristaux", "Casual", 18, 3
177, 44.00, 3000.00, "Top scintillant", "Top scintillant noir avec des paillettes pour une soirée magique", "Soirée", 18, 3
178, 45.00, 3100.00, "Manteau en laine", "Manteau en laine noire avec un col en fourrure pour une allure élégante", "Hiver", 18, 3
179, 46.00, 3200.00, "Robe moulante", "Robe moulante noire avec des détails métalliques pour une silhouette sensuelle", "Soirée", 18, 3
180, 47.00, 3300.00, "Top en satin", "Top en satin noir avec une coupe asymétrique et des manches larges", "Casual", 18, 3


181, 38.00, 2100.00, "Robe en velours", "Robe en velours noire avec des détails en fil d'or pour un effet lumineux", "Soirée", 19, 2
182, 39.50, 2200.00, "Veste en cuir", "Veste en cuir noir avec des détails argentés pour un look nocturne", "Casual", 19, 2
183, 40.00, 2300.00, "Blouse en satin", "Blouse en satin bleu nuit avec un léger décolleté", "Casual", 19, 2
184, 41.00, 2400.00, "Pantalon en velours", "Pantalon en velours noir avec une coupe élégante et fluide", "Casual", 19, 2
185, 42.00, 2500.00, "Robe de soirée", "Robe de soirée noire avec des motifs en fil d'argent", "Soirée", 19, 2
186, 43.00, 2600.00, "Jupe en cuir", "Jupe en cuir noir, cintrée à la taille pour une silhouette marquée", "Casual", 19, 2
187, 44.00, 2700.00, "Top en soie", "Top en soie bleu nuit avec une coupe fluide et élégante", "Casual", 19, 2
188, 45.00, 2800.00, "Manteau en laine", "Manteau en laine noire avec une coupe classique et une doublure en satin", "Hiver", 19, 2
189, 46.00, 2900.00, "Robe moulante", "Robe moulante noire avec des détails en dentelle pour un look sexy", "Soirée", 19, 2
190, 47.00, 3000.00, "Cardigan en cachemire", "Cardigan en cachemire noir pour un confort chaleureux et stylé", "Casual", 19, 2


191, 38.00, 3200.00, "Robe en soie multicolore", "Robe en soie multicolore inspirée des mouvements artistiques, avec des touches de peinture vive", "Soirée", 6, 15
192, 39.50, 3300.00, "Blouse avec imprimé", "Blouse légère avec un imprimé abstrait inspiré des œuvres visuelles de la modernité", "Casual", 6, 15
193, 40.00, 3400.00, "Pantalon large en satin", "Pantalon large en satin avec des couleurs vives et un motif graphique", "Casual", 6, 15
194, 41.00, 3500.00, "Robe asymétrique", "Robe asymétrique avec des éléments de peinture à l'huile sur le tissu", "Soirée", 6, 15
195, 42.00, 3600.00, "Veste en velours", "Veste en velours rouge et or avec des touches de peinture en relief", "Formelle", 6, 15
196, 43.00, 3700.00, "Top en soie", "Top en soie avec des couleurs éclatantes et une coupe fluide", "Casual", 6, 15
197, 44.00, 3800.00, "Robe de soirée", "Robe de soirée avec des motifs inspirés des couleurs primaires, audacieuse et chic", "Soirée", 6, 15
198, 45.00, 3900.00, "Pantalon en cuir", "Pantalon en cuir avec une finition brillante et des accents métalliques", "Casual", 6, 15
199, 46.00, 4000.00, "Blouse en satin", "Blouse en satin aux couleurs vives avec une coupe moderne et artistique", "Casual", 6, 15
200, 47.00, 4100.00, "Manteau long", "Manteau long avec un motif pictural qui joue avec des tons de bleu, jaune et rouge", "Hiver", 6, 15


201, 38.00, 4200.00, "Robe de soirée en satin", "Robe de soirée en satin doré avec des détails en pierres précieuses", "Soirée", 7, 14
202, 39.50, 4300.00, "Veste en fourrure", "Veste en fourrure artificielle dans des tons riches de bronze et or", "Hiver", 7, 14
203, 40.00, 4400.00, "Jupe en cuir", "Jupe en cuir noir avec des broderies dorées complexes", "Casual", 7, 14
204, 41.00, 4500.00, "Blouse en organza", "Blouse en organza avec des détails de paillettes et des manches volantes", "Casual", 7, 14
205, 42.00, 4600.00, "Robe de gala", "Robe de gala en velours bleu marine avec des incrustations de cristaux", "Soirée", 7, 14
206, 43.00, 4700.00, "Pantalon à plis", "Pantalon à plis en laine noire avec une finition brillante et une taille haute", "Formelle", 7, 14
207, 44.00, 4800.00, "Top en soie", "Top en soie avec un imprimé opulent en or et une coupe élégante", "Casual", 7, 14
208, 45.00, 4900.00, "Manteau en laine", "Manteau en laine doublé de fourrure avec des détails luxueux", "Hiver", 7, 14
209, 46.00, 5000.00, "Robe à paillettes", "Robe à paillettes dorées pour un look éclatant lors d'un événement de nuit", "Soirée", 7, 14
210, 47.00, 5100.00, "Robe longue", "Robe longue avec une coupe fluide, ornée de motifs floraux en or", "Soirée", 7, 14


211, 38.00, 3300.00, "Robe fluide", "Robe fluide en lin avec des motifs floraux délicats, parfaite pour le printemps", "Casual", 8, 13
212, 39.50, 3400.00, "Blouse en soie", "Blouse en soie rose pâle avec une coupe moderne et des détails de broderie", "Casual", 8, 13
213, 40.00, 3500.00, "Jupe midi", "Jupe midi en coton avec des imprimés floraux et une taille élastique", "Casual", 8, 13
214, 41.00, 3600.00, "Top à manches longues", "Top à manches longues en coton, léger et parfait pour une tenue printanière", "Casual", 8, 13
215, 42.00, 3700.00, "Robe en coton", "Robe en coton blanc avec une coupe simple mais élégante, idéale pour l'été", "Casual", 8, 13
216, 43.00, 3800.00, "Veste en jean", "Veste en jean délavé avec des broderies florales pour une touche printanière", "Casual", 8, 13
217, 44.00, 3900.00, "Pantalon large", "Pantalon large en coton avec une taille haute, parfait pour les journées ensoleillées", "Casual", 8, 13
218, 45.00, 4000.00, "Robe longue", "Robe longue en tissu léger avec un décolleté en V et des motifs floraux frais", "Soirée", 8, 13
219, 46.00, 4100.00, "Manteau léger", "Manteau léger en laine mélangée, parfait pour les soirées fraîches du printemps", "Hiver", 8, 13
220, 47.00, 4200.00, "Robe à volants", "Robe à volants dans des tons pastel, évoquant le renouveau du printemps", "Casual", 8, 13