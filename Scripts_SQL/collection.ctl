--Collection ctl
LOAD DATA
INFILE *
APPEND
INTO TABLE Collection
FIELDS TERMINATED BY "," OPTIONALLY ENCLOSED BY '"'
(nCollection, nomCollection, themeCollection, saison, nbrTenues, nCreateur, nomMaisonMode)
BEGINDATA
1, "Echos Sauvages", "Evasion et Nature", "Printemps/Ete", 0, 20, "Isabel Marant"
2, "Heritage Intemporel", "Elegance et Intemporalite", "Automne/Hiver", 0, 19, "Moschino"
3, "Metropole Brulante", "Moderne et Urbain", "Automne/Hiver", 0, 18, "Marc Jacobs"
4, "Reve Astral", "Inspirations Mystiques et Feeriques", "Printemps/Ete", 0, 17, "Tommy Hilfiger"
5, "Esprit Vintage", "Voyage dans le Temps", "Automne/Hiver", 0, 16, "Kenzo"
6, "Palette Vivante", "Art et Creation Visuelle", "Printemps/Ete", 0, 15, "Lacoste"
7, "Opulence eclatante", "Luxe et Extravagance", "Automne/Hiver", 0, 14, "Miu Miu"
8, "Printemps eternel", "Saison et Temperament", "Printemps/Ete", 0, 13, "Dolce Gabbana"
9, "Sous le Ciel Nu", "Evasion et Nature", "Printemps/Ete", 0, 12, "Saint Laurent"
10, "eclats debene", "Elegance et Intemporalite", "Automne/Hiver", 0, 11, "Marc Jacobs"
11, "Ombres de la Ville", "Moderne et Urbain", "Automne/Hiver", 0, 10, "Hermes"
12, "Murmures de Lune", "Inspirations Mystiques et Feeriques", "Printemps/Ete", 0, 9, "Givenchy"
13, "Souvenirs depoque", "Voyage dans le Temps", "Automne/Hiver", 0, 8, "Balenciaga"
14, "Coup de Pinceau", "Art et Creation Visuelle", "Printemps/Ete", 0, 7, "Fendi"
15, "Or et Soie", "Luxe et Extravagance", "Automne/Hiver", 0, 6, "Versace"
16, "Automne Dore", "Saison et Temperament", "Printemps/Ete", 0, 5, "Prada"
17, "Vagues demeraude", "Elegance et Intemporalite", "Automne/Hiver", 0, 4, "Gucci"
18, "Nuit Celeste", "Moderne et Urbain", "Automne/Hiver", 0, 3, "Louis Vuitton"
19, "Magie de Minuit", "Inspirations Mystiques et Feeriques", "Printemps/Ete", 0, 2, "Dior"
20, "Renaissance Moderne", "Voyage dans le Temps", "Automne/Hiver", 0, 1, "Chanel"
21, "Vibrations Chromatiques", "Art et Creation Visuelle", "Printemps/Ete", 0, 30, "Armani"
22, "Legendes de Satin", "Luxe et Extravagance", "Automne/Hiver", 0, 29, "Burberry"
23, "Brise dete", "Saison et Temperament", "Printemps/Ete", 0, 28, "Givenchy"
24, "Foret de Lumiere", "Evasion et Nature", "Printemps/Ete", 0, 27, "Alexander McQueen"
25, "Vestiges de Velours", "Elegance et Intemporalite", "Automne/Hiver", 0, 26, "Balenciaga"
26, "Futur Metallique", "Moderne et Urbain", "Automne/Hiver", 0, 25, "Ermenegildo Zegna"
27, "Veille aux etoiles", "Inspirations Mystiques et Feeriques", "Printemps/Ete", 0, 24, "Bottega Veneta"
28, "Patrimoine Revisitee", "Voyage dans le Temps", "Automne/Hiver", 0, 23, "Givenchy"
29, "Sculptures de Soie", "Art et Creation Visuelle", "Printemps/Ete", 0, 22, "Ralph Lauren"
30, "Reve de Rubis", "Luxe et Extravagance", "Automne/Hiver", 0, 21, "Moschino"
