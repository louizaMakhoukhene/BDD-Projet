-- maisonmode.ctl
LOAD DATA
INFILE *
APPEND
INTO TABLE MaisonMode
FIELDS TERMINATED BY "," OPTIONALLY ENCLOSED BY '"'
(nomMaisonMode, nomFondateur, dateFondation "TO_DATE(:dateFondation, 'YYYY-MM-DD')", localisation, logo, siteWEB)
BEGINDATA
"UVSQ", "Beatrice Finance", "2012-12-12", "Versailles, France", "uvsq.png", "https://www.uvsq.com"
"ESGI", "Frederic Sanaenes", "2023-09-16", "Nation, France", "esgi.png", "https://www.esgi.com"
"Chanel", "Gabrielle Chanel", "1910-01-01", "Paris, France", "chanel_logo.png", "https://www.chanel.com"
"Dior", "Christian Dior", "1946-10-08", "Paris, France", "dior_logo.png", "https://www.dior.com"
"Louis Vuitton", "Louis Vuitton", "1854-01-01", "Paris, France", "lv_logo.png", "https://www.louisvuitton.com"
"Gucci", "Guccio Gucci", "1921-01-01", "Florence, Italy", "gucci_logo.png", "https://www.gucci.com"
"Prada", "Mario Prada", "1913-01-01", "Milan, Italy", "prada_logo.png", "https://www.prada.com"
"Versace", "Gianni Versace", "1978-01-01", "Milan, Italy", "versace_logo.png", "https://www.versace.com"
"Hermes", "Thierry Hermes", "1837-01-01", "Paris, France", "hermes_logo.png", "https://www.hermes.com"
"Balenciaga", "Cristóbal Balenciaga", "1919-01-01", "Paris, France", "balenciaga_logo.png", "https://www.balenciaga.com"
"Saint Laurent", "Yves Saint Laurent", "1961-01-01", "Paris, France", "ysl_logo.png", "https://www.ysl.com"
"Givenchy", "Hubert de Givenchy", "1952-01-01", "Paris, France", "givenchy_logo.png", "https://www.givenchy.com"
"Burberry", "Thomas Burberry", "1856-01-01", "London, UK", "burberry_logo.png", "https://www.burberry.com"
"Valentino", "Valentino Garavani", "1960-01-01", "Rome, Italy", "valentino_logo.png", "https://www.valentino.com"
"Armani", "Giorgio Armani", "1975-01-01", "Milan, Italy", "armani_logo.png", "https://www.armani.com"
"Ralph Lauren", "Ralph Lauren", "1967-01-01", "New York, USA", "ralphlauren_logo.png", "https://www.ralphlauren.com"
"Fendi", "Adele and Edoardo Fendi", "1925-01-01", "Rome, Italy", "fendi_logo.png", "https://www.fendi.com"
"Lacoste", "Rene Lacoste", "1933-01-01", "Paris, France", "lacoste_logo.png", "https://www.lacoste.com"
"Kenzo", "Kenzo Takada", "1970-01-01", "Paris, France", "kenzo_logo.png", "https://www.kenzo.com"
"Moschino", "Franco Moschino", "1983-01-01", "Milan, Italy", "moschino_logo.png", "https://www.moschino.com"
"Bottega Veneta", "Michele Taddei", "1966-01-01", "Vicenza, Italy", "bottega_logo.png", "https://www.bottegaveneta.com"
"Dolce Gabbana", "Domenico Dolce Stefano Gabbana", "1985-01-01", "Milan, Italy", "dg_logo.png", "https://www.dolcegabbana.com"
"Salvatore Ferragamo", "Salvatore Ferragamo", "1927-01-01", "Florence, Italy", "ferragamo_logo.png", "https://www.ferragamo.com"
"Tommy Hilfiger", "Tommy Hilfiger", "1985-01-01", "New York, USA", "tommy_logo.png", "https://www.tommy.com"
"Marc Jacobs", "Marc Jacobs", "1986-01-01", "New York, USA", "marcjacobs_logo.png", "https://www.marcjacobs.com"
"Alexander McQueen", "Alexander McQueen", "1992-01-01", "London, UK", "mcqueen_logo.png", "https://www.alexandermcqueen.com"
"Oscar de la Renta", "Oscar de la Renta", "1965-01-01", "New York, USA", "oscar_logo.png", "https://www.oscardelarenta.com"
"Vera Wang", "Vera Wang", "1990-01-01", "New York, USA", "verawang_logo.png", "https://www.verawang.com"
"Ermenegildo Zegna", "Ermenegildo Zegna", "1910-01-01", "Trivero, Italy", "zegna_logo.png", "https://www.zegna.com"
"Miu Miu", "Miuccia Prada", "1993-01-01", "Milan, Italy", "miumiu_logo.png", "https://www.miumiu.com"
"Alberta Ferretti", "Alberta Ferretti", "1980-01-01", "Milan, Italy", "alberta_logo.png", "https://www.albertaferretti.com"
"Thom Browne", "Thom Browne", "2001-01-01", "New York, USA", "thombrowne_logo.png", "https://www.thombrowne.com"
"Haider Ackermann", "Haider Ackermann", "2003-01-01", "Paris, France", "haider_logo.png", "https://www.haiderackermann.com"
"Isabel Marant", "Isabel Marant", "1994-01-01", "Paris, France", "isabel_logo.png", "https://www.isabelmarant.com"
"Ann Demeulemeester", "Ann Demeulemeester", "1985-01-01", "Antwerp, Belgium", "ann_logo.png", "https://www.anndemeulemeester.com"
