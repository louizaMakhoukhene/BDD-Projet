--Defile ctl
LOAD DATA
INFILE *
APPEND
INTO TABLE Defile
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
(nDefile, lieu, heureDebut TIMESTAMP "YYYY-MM-DD HH24:MI:SS", heureFin TIMESTAMP "YYYY-MM-DD HH24:MI:SS", dateDefile DATE "YYYY-MM-DD", theme, descriptionDefile, nbrPlaceMax, nomMaisonMode)
BEGINDATA
14,"Palace of Versailles, France","2025-01-15 14:45:00","2025-01-15 18:15:00","2025-01-15","Rêve Baroque","Collection inspirée du baroque français",250,"Alberta Ferretti"
15,"Golden Gate Park, San Francisco","2025-02-10 15:20:00","2025-02-10 16:30:00","2025-02-10","Vents de Liberté","Exploration des styles audacieux et modernes",180,"Alexander McQueen"
16,"Sydney Opera House, Sydney","2025-03-05 21:00:00","2025-03-05 23:00:00","2025-03-05","Océans Infinis","Collection inspirée des fonds marins et des vagues",300,"Ann Demeulemeester"
17,"Taj Mahal Gardens, India","2025-03-20 18:30:00","2025-03-20 20:30:00","2025-03-20","Éclat et Tradition","Mariage entre culture indienne et design moderne",400,"Armani"
18,"Great Wall of China, Beijing","2025-04-08 16:00:00","2025-04-08 18:00:00","2025-04-08","Dynastie Moderne","Collection inspirée par l’art ancien chinois.",500,"Balenciaga"
19,"Eiffel Tower Base, Paris","2025-05-01 20:00:00","2025-05-01 22:00:00","2025-05-01","Parisienne Éternelle","Hommage au style intemporel parisien.",250,"Bottega Veneta"
20,"Mount Fuji, Japan","2025-05-25 18:00:00","2025-05-25 20:45:00","2025-05-25","Nature Sublime","Collection célébrant la beauté de la nature japonaise.",350,"Burberry"
21,"Dubai Marina, UAE","2025-06-10 19:00:00","2025-06-10 22:30:00","2025-06-10","Or et Déserts","Collection inspirée par les paysages désertiques.",500,"Chanel"
22,"Cape Town, South Africa","2025-07-05 17:30:00","2025-07-05 20:00:00","2025-07-05","Afrique Moderne","Éclats de couleurs et d’art africain revisités.",280,"Dior"
23,"Red Square, Moscow","2025-08-01 15:00:00","2025-08-01 18:00:00","2025-08-01","Tsars Modernes","Collection inspirée des tsars russes.",400,"Dolce Gabbana"
24,"Sydney Opera House, Sydney","2026-01-15 16:00:00","2026-01-15 18:30:00","2026-01-15","Océan et Transparence","Inspiré par les vagues et la lumière sur l’eau.",250,"Ermenegildo Zegna"
25,"Taj Mahal Gardens, Agra","2026-02-10 17:45:00","2026-02-10 20:15:00","2026-02-10","Éclat de l’Orient","Mélange de traditions indiennes et de haute couture.",300,"Fendi"
26,"Golden Gate Park, San Francisco","2026-03-05 15:30:00","2026-03-05 17:30:00","2026-03-05","Modernité et Minimalisme","Focus sur des lignes épurées et des tons neutres.",180,"Givenchy"
27,"Forbidden City, Beijing","2026-04-10 19:00:00","2026-04-10 21:45:00","2026-04-10","Dynasties et Modernité","Inspiration des vêtements traditionnels chinois revisités.",220,"Gucci"
28,"Table Mountain, Cape Town","2026-05-20 18:00:00","2026-05-20 20:30:00","2026-05-20","Couleurs de l’Afrique","Un hommage à la diversité culturelle et artistique africaine.",200,"Hermes"
29,"Santorini Cliffs, Greece","2026-06-25 19:30:00","2026-06-25 22:00:00","2026-06-25","Blanc et Pureté","Une exploration du blanc et de la simplicité élégante.",250,"Haider Ackermann"
30,"Eiffel Tower Lawn, Paris","2026-07-14 21:00:00","2026-07-14 23:59:00","2026-07-14","Révolution et Haute Couture","Célébration de la mode et de l’histoire française.",300,"Isabel Marant"
