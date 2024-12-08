--Collection ctl
LOAD DATA
INFILE *
APPEND
INTO TABLE Collection
FIELDS TERMINATED BY "," OPTIONALLY ENCLOSED BY '"'
(nCollection, nomCollection, themeCollection, saison, nbrTenues, nCreateur, nomMaisonMode)
BEGINDATA
31, "Ombres Mystiques", "Mystère et Enchantement", "Printemps/Ete", 0, 30, "Chanel"
32, "Voyage Celeste", "Inspiration Astrale", "Automne/Hiver", 0, 29, "Chanel"
33, "Lueurs d'Aurore", "Reflets de l'Aube", "Printemps/Ete", 0, 28, "Dior"
1, "Echos Sauvages", "Evasion et Nature", "Printemps/Ete", 0, 20, "Chanel"
2, "Heritage Intemporel", "Elegance et Intemporalite", "Automne/Hiver", 0, 19, "Dior"
3, "Metropole Brulante", "Moderne et Urbain", "Automne/Hiver", 0, 18, "Louis Vuitton"
4, "Reve Astral", "Inspirations Mystiques et Feeriques", "Printemps/Ete", 0, 17, "Gucci"
5, "Esprit Vintage", "Voyage dans le Temps", "Automne/Hiver", 0, 16, "Prada"
6, "Palette Vivante", "Art et Creation Visuelle", "Printemps/Ete", 0, 15, "Versace"
7, "Opulence eclatante", "Luxe et Extravagance", "Automne/Hiver", 0, 14, "Fendi"
8, "Printemps eternel", "Saison et Temperament", "Printemps/Ete", 0, 13, "Balenciaga"
9, "Sous le Ciel Nu", "Evasion et Nature", "Printemps/Ete", 0, 12, "Givenchy"
10, "eclats debene", "Elegance et Intemporalite", "Automne/Hiver", 0, 11, "Hermes"
11, "Ombres de la Ville", "Moderne et Urbain", "Automne/Hiver", 0, 10, "Saint Laurent"
12, "Murmures de Lune", "Inspirations Mystiques et Feeriques", "Printemps/Ete", 0, 9, "Dolce Gabbana"
13, "Souvenirs depoque", "Voyage dans le Temps", "Automne/Hiver", 0, 8, "Miu Miu"
14, "Coup de Pinceau", "Art et Creation Visuelle", "Printemps/Ete", 0, 7, "Lacoste"
15, "Or et Soie", "Luxe et Extravagance", "Automne/Hiver", 0, 6, "Kenzo"
16, "Automne Dore", "Saison et Temperament", "Printemps/Ete", 0, 5, "Marc Jacobs"
17, "Vagues demeraude", "Elegance et Intemporalite", "Automne/Hiver", 0, 4, "Moschino"
18, "Nuit Celeste", "Moderne et Urbain", "Automne/Hiver", 0, 3, "Isabel Marant"
19, "Magie de Minuit", "Inspirations Mystiques et Feeriques", "Printemps/Ete", 0, 2, "Ralph Lauren"
20, "Renaissance Moderne", "Voyage dans le Temps", "Automne/Hiver", 0, 1, "Burberry"
21, "Vibrations Chromatiques", "Art et Creation Visuelle", "Printemps/Ete", 0, 30, "Armani"
22, "Legendes de Satin", "Luxe et Extravagance", "Automne/Hiver", 0, 29, "Bottega Veneta"
23, "Brise dete", "Saison et Temperament", "Printemps/Ete", 0, 28, "Salvatore Ferragamo"
24, "Foret de Lumiere", "Evasion et Nature", "Printemps/Ete", 0, 27, "Tommy Hilfiger"
25, "Vestiges de Velours", "Elegance et Intemporalite", "Automne/Hiver", 0, 26, "Oscar de la Renta"
26, "Futur Metallique", "Moderne et Urbain", "Automne/Hiver", 0, 25, "Vera Wang"
27, "Veille aux etoiles", "Inspirations Mystiques et Feeriques", "Printemps/Ete", 0, 24, "Alberta Ferretti"
28, "Patrimoine Revisitee", "Voyage dans le Temps", "Automne/Hiver", 0, 23, "Haider Ackermann"
29, "Sculptures de Soie", "Art et Creation Visuelle", "Printemps/Ete", 0, 22, "Ann Demeulemeester"
30, "Reve de Rubis", "Luxe et Extravagance", "Automne/Hiver", 0, 21, "Ermenegildo Zegna"
