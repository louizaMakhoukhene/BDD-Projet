LOAD DATA
INFILE *
APPEND
INTO TABLE Defile
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
(nDefile, lieu, heureDebut TIMESTAMP "YYYY-MM-DD HH24:MI:SS", heureFin TIMESTAMP "YYYY-MM-DD HH24:MI:SS", dateDefile DATE "YYYY-MM-DD", theme, descriptionDefile, nbrPlaceMax, nomMaisonMode)
BEGINDATA
14,"Palace of Versailles, France" , "2025-01-15 14:45:00" , "2025-01-15 18:15:00" , "2025-01-15" , "Rêve Baroque" , "Collection inspirée du baroque français" , 250 , "Alberta Ferretti"

15,"Golden Gate Park, San Francisco" , "2025-02-10 16:20:00" , "2025-02-10 15:30:00" ,"2025-02-10", "Vents de Liberté" ,"Exploration des styles audacieux et modernes", 180,"Alexander McQueen"

16,"Sydney Opera House, Sydney","2025-03-05 21:00:00","2025-03-05 23:00:00","2025-03-05","Océans Infinis","Collection inspirée des fonds marins et des vagues",300, "Ann Demeulemeester"

17,"Taj Mahal Gardens, India","2025-03-20 18:30:00","2025-03-20 20:30:00", "2025-03-20","Éclat et Tradition","Mariage entre culture indienne et design moderne",400,"Armani"

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

31,"Red Square, Moscow","2026-08-01 18:30:00","2026-08-01 21:00:00","2026-08-01","Étoiles du Nord","Élégance hivernale inspirée par les cultures slaves.",220,"Kenzo"

32,"Grand Canyon, Arizona","2026-09-10 16:00:00","2026-09-10 19:00:00","2026-09-10","Nature et Grandiose","Des silhouettes imposantes dans un décor spectaculaire.",150,"Lacoste"

33,"Christ the Redeemer, Rio de Janeiro","2026-10-05 17:00:00","2026-10-05 19:30:00","2026-10-05","Carnaval et Exubérance","Une célébration haute en couleur de la mode brésilienne.",280,"Louis Vuitton"

34,"Antelope Canyon, Arizona","2026-11-15 15:00:00","2026-11-15 17:45:00","2026-11-15","Textures et Lumière","Une collection inspirée par la géométrie naturelle et la lumière.",120,"Marc Jacobs"

35,"Colosseum, Rome","2026-12-05 20:00:00","2026-12-05 22:30:00","2026-12-05","Gladiateurs et Grâces","Fusion entre le style antique romain et le moderne.",250,"Miu Miu"

36,"Great Wall of China, Beijing","2027-01-20 14:00:00","2027-01-20 16:45:00","2027-01-20","Harmonie et Éternité","Une exploration des motifs anciens et du design futuriste.",300,"Moschino"

37,"Neuschwanstein Castle, Germany","2027-02-14 17:00:00","2027-02-14 19:30:00","2027-02-14","Rêves et Romance","Des robes de conte de fées dans un décor enchanteur.",200,"Oscar de la Renta"

38,"Sydney Opera House, Australia","2027-03-10 19:00:00","2027-03-10 21:30:00","2027-03-10","Ondes et Architecture","Des designs fluides inspirés par l'architecture moderne.",220,"Prada"

39,"Taj Mahal, India","2027-04-15 17:00:00","2027-04-15 20:00:00","2027-04-15","Richesses et Ornements","Une ode à l'artisanat et aux détails somptueux.",300,"Ralph Lauren"

40,"Santorini, Greece","2027-05-25 18:30:00","2027-05-25 21:00:00","2027-05-25","Éclat Méditerranéen","Des créations légères et lumineuses, parfaites pour l'été.",180,"Saint Laurent"

41,"Central Park, New York","2027-06-20 16:00:00","2027-06-20 18:30:00","2027-06-20","Nature et Métropole","Une collection mêlant nature et modernité urbaine.",250,"Salvatore Ferragamo"

42,"Marrakech Gardens, Morocco","2027-07-10 19:00:00","2027-07-10 21:30:00","2027-07-10","Mystique et Évasion","Une collection inspirée des couleurs et motifs marocains.",200,"Thom Browne"

43,"Golden Gate Bridge, San Francisco","2027-08-05 17:30:00","2027-08-05 20:00:00","2027-08-05","Modernité et Énergie","Des looks audacieux pour un style urbain et dynamique.",240,"Tommy Hilfiger"

44,"Mont-Saint-Michel, France","2027-09-15 20:00:00","2027-09-15 22:30:00","2027-09-15","Mystère et Romance","Des créations poétiques pour une ambiance médiévale.",190,"Valentino"