--Collection ctl
LOAD DATA
INFILE *
APPEND
INTO TABLE Collection
FIELDS TERMINATED BY "," OPTIONALLY ENCLOSED BY '"'
(nCollection, nomCollection, themeCollection, saison, nbrTenues, nCreateur, nomMaisonMode)
BEGINDATA
1, "Echos Sauvages", "Evasion et Nature", "Printemps/Ete", 0, 1, "Lacoste"
2, "Heritage Intemporel", "Elegance et Intemporalite", "Automne/Hiver", 0, 2, "Chanel"
3, "Metropole Brulante", "Moderne et Urbain", "Automne/Hiver", 0, 3, "Dior"
4, "Haute Couture Marine", "Elegance et Mer", "Printemps/Ete", 0, 1, "Lacoste"
5, "Legacy Parisienne", "Tradition et Modernite", "Automne/Hiver", 8, 2, "Chanel"
6, "Urban Glam", "Style Urbain et Chic", "Automne/Hiver", 0, 3, "Dior"
7, "Flamme Dorée", "Femme et Lumière", "Automne/Hiver", 0, 4, "Gucci"
8, "Modern Renaissance", "Art et Mode", "Printemps/Ete", 0, 5, "Prada"
9, "The Iconic Jet Set", "Voyage et Luxe", "Printemps/Ete", 0, 6, "Versace"
10, "Urban Art", "Contemporain et Exuberance", "Automne/Hiver", 0, 7, "Fendi"
11, "Haute Couture Future", "Elegance et Avance", "Printemps/Ete", 0, 8, "Balenciaga"
12, "Haute Couture Vintage", "Elegance Rétro", "Automne/Hiver", 0, 9, "Givenchy"
13, "Paris Chic", "Luxe Parisien", "Automne/Hiver", 0, 10, "Hermes"
14, "Haute Couture Sportive", "Confort et Style", "Printemps/Ete", 0, 11, "Marc Jacobs"
15, "Haute Couture Asiatique", "Savoir-faire Japonais", "Automne/Hiver", 0, 12, "Saint Laurent"
16, "Haute Couture Russe", "Exclusif et Intemporel", "Automne/Hiver", 0, 13, "Dolce Gabbana"
17, "Haute Couture Brésilienne", "Luxe Sud-Américain", "Automne/Hiver", 0, 14, "Miu Miu"
18, "Haute Couture Londonienne", "Chic Britannique", "Automne/Hiver", 0, 15, "Lacoste"
19, "Haute Couture Marocaine", "Ethnique et Moderne", "Automne/Hiver", 0, 16, "Kenzo"
20, "Haute Couture Australienne", "Minimalisme et Luxe", "Automne/Hiver", 0, 17, "Tommy Hilfiger"
21, "Haute Couture Americaine", "Luxe et Élégance", "Printemps/Ete", 0, 18, "Marc Jacobs"
22, "Haute Couture Belge", "Artisanat et Modernité", "Automne/Hiver", 0, 19, "Moschino"
23, "Haute Couture Italienne", "Luxe et Passion", "Automne/Hiver", 0, 20, "Isabel Marant"
24, "Haute Couture Nordique", "Chic Minimaliste", "Automne/Hiver", 0, 21, "Moschino"
25, "Haute Couture Espagnole", "Passion et Tradition", "Automne/Hiver", 0, 22, "Ralph Lauren"
26, "Haute Couture Africaine", "Exotisme et Élégance", "Automne/Hiver", 0, 23, "Givenchy"
27, "Haute Couture Asiatique", "Tradition et Luxe", "Automne/Hiver", 0, 24, "Bottega Veneta"
28, "Haute Couture Américaine", "Luxe et Rigueur", "Automne/Hiver", 0, 25, "Ermenegildo Zegna"
29, "Haute Couture Allemande", "Technicité et Raffinement", "Automne/Hiver", 0, 26, "Balenciaga"
30, "Haute Couture Turque", "Ornements et Modernité", "Automne/Hiver", 0, 27, "Alexander McQueen"