-- Defile ctl
LOAD DATA
INFILE *
APPEND
INTO TABLE Defile
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
(
    nDefile, 
    lieu, 
    heureDebut TIMESTAMP "YYYY-MM-DD HH24:MI:SS", 
    heureFin TIMESTAMP "YYYY-MM-DD HH24:MI:SS", 
    dateDefile DATE "YYYY-MM-DD", 
    theme, 
    descriptionDefile, 
    nbrPlaceMax, 
    nomMaisonMode
)
BEGINDATA
1, "Paris", "1985-06-15 16:25:00", "1985-06-15 18:45:00", "1985-06-15", "Ombres Mystiques", "Une collection pleine de mystères et de détails sombres", 100, "Chanel"
2, "Paris", "1987-07-15 15:50:00", "1987-07-15 18:10:00", "1987-07-15", "Voyage Celeste", "Un voyage entre les étoiles, avec des textures éthérées", 120, "Chanel"
3, "Paris", "1990-09-10 17:15:00", "1990-09-10 19:30:00", "1990-09-10", "Echos Sauvages", "Des inspirations sauvages avec des influences naturelles", 100, "Chanel"
4, "Paris", "1990-03-22 15:35:00", "1990-03-22 18:00:00", "1990-03-22", "Lueurs d'Aurore", "Les premières lueurs du matin, en couleurs douces et subtiles", 80, "Dior"
5, "Paris", "1993-01-10 16:00:00", "1993-01-10 18:10:00", "1993-01-10", "Heritage Intemporel", "Un hommage aux classiques et à l'élégance intemporelle", 90, "Dior"
6, "Paris", "1992-01-30 16:50:00", "1992-01-30 19:00:00", "1992-01-30", "Metropole Brulante", "Une exploration des grandes villes et de leur énergie", 110, "Louis Vuitton"
7, "Paris", "1994-03-05 15:45:00", "1994-03-05 18:10:00", "1994-03-05", "Reve Astral", "Une collection inspirée des astres et des visions mystiques", 100, "Gucci"
8, "Milan", "1996-11-20 16:20:00", "1996-11-20 18:40:00", "1996-11-20", "Esprit Vintage", "Retour vers les années 50, avec des touches modernes", 90, "Prada"
9, "Milan", "1999-06-10 15:55:00", "1999-06-10 18:05:00", "1999-06-10", "Palette Vivante", "Exploration de la couleur et de l'art visuel", 100, "Versace"
10, "Rome", "1995-02-05 16:00:00", "1995-02-05 18:10:00", "1995-02-05", "Opulence éclatante", "Luxe, brillants, et extravagance dans une collection somptueuse", 120, "Fendi"
11, "Paris", "1992-08-01 15:45:00", "1992-08-01 18:00:00", "1992-08-01", "Printemps eternel", "Une ode au printemps éternel et à la légèreté", 80, "Balenciaga"
12, "Paris", "1996-03-15 15:50:00", "1996-03-15 18:10:00", "1996-03-15", "Sous le Ciel Nu", "Retour à la nature avec une collection inspirée des cieux", 95, "Givenchy"
13, "Paris", "1999-04-12 16:30:00", "1999-04-12 18:45:00", "1999-04-12", "Eclats de Bene", "Une interprétation élégante des tendances modernes", 100, "Hermes"

14, "Paris", "1991-02-15 16:00:00", "1991-02-15 18:20:00", "1991-02-15", "Ombres de la Ville", "Les mystères des grandes villes dans une collection moderne", 110, "Saint Laurent"
15, "Milan", "1993-06-10 15:30:00", "1993-06-10 17:45:00", "1993-06-10", "Murmures de Lune", "Rêves et mysticisme inspirés de la lune et de ses mystères", 90, "Dolce Gabbana"
16, "Paris", "1994-11-12 16:25:00", "1994-11-12 18:45:00", "1994-11-12", "Souvenirs d'époque", "Retour à la mode vintage et aux souvenirs du passé", 100, "Miu Miu"
17, "Paris", "1997-05-23 15:55:00", "1997-05-23 18:15:00", "1997-05-23", "Coup de Pinceau", "Collection artistique inspirée de la peinture et des coups de pinceau", 90, "Lacoste"
18, "Milan", "1994-12-01 15:50:00", "1994-12-01 18:10:00", "1994-12-01", "Or et Soie", "Luxe et luxe raffiné dans une combinaison d'or et de soie", 120, "Kenzo"
19, "Paris", "1995-06-20 16:10:00", "1995-06-20 18:25:00", "1995-06-20", "Automne Dore", "Une collection automnale inspirée des tons dorés de l'automne", 100, "Marc Jacobs"
20, "Paris", "1994-08-22 15:40:00", "1994-08-22 17:55:00", "1994-08-22", "Vagues de Meraude", "Une exploration de la mer et de ses mystères", 100, "Moschino"
21, "Paris", "1996-03-10 15:55:00", "1996-03-10 18:20:00", "1996-03-10", "Nuit Celeste", "Un hommage à la nuit étoilée avec des inspirations cosmiques", 100, "Isabel Marant"
22, "Paris", "1994-12-02 16:10:00", "1994-12-02 18:25:00", "1994-12-02", "Magie de Minuit", "La magie de minuit dans des tons sombres et mystérieux", 90, "Ralph Lauren"
23, "Milan", "1995-09-25 15:50:00", "1995-09-25 18:10:00", "1995-09-25", "Renaissance Moderne", "La modernité rencontre la tradition dans cette collection", 110, "Burberry"
24, "Paris", "1996-03-15 16:05:00", "1996-03-15 18:30:00", "1996-03-15", "Vibrations Chromatiques", "Des vibrations de couleurs et des créations visuelles", 80, "Armani"
25, "Paris", "1999-05-06 16:15:00", "1999-05-06 18:30:00", "1999-05-06", "Legendes de Satin", "Une collection inspirée des légendes et du luxe du satin", 100, "Bottega Veneta"
26, "Paris", "1995-04-12 16:40:00", "1995-04-12 18:55:00", "1995-04-12", "Brise d'été", "La brise douce de l'été inspirant cette collection légère", 90, "Salvatore Ferragamo"
27, "Paris", "1997-09-01 15:45:00", "1997-09-01 18:10:00", "1997-09-01", "Forêt de Lumière", "Une lumière douce traversant une forêt magique", 100, "Tommy Hilfiger"
28, "Paris", "1997-02-10 15:45:00", "1997-02-10 18:00:00", "1997-02-10", "Rêverie Baroque", "Une rêverie inspirée des époques baroques et de leur luxe", 90, "Dior"
29, "Paris", "1997-01-30 15:50:00", "1997-01-30 18:05:00", "1997-01-30", "Mille Reflets", "Reflets et jeux de lumière dans une collection féerique", 100, "Prada"
30, "Paris", "1995-12-01 16:10:00", "1995-12-01 18:25:00", "1995-12-01", "Sable et Soie", "Collection inspirée des textures de sable et de soie", 100, "Louis Vuitton"