-- sponsor.ctl
LOAD DATA
INFILE *
APPEND
INTO TABLE Sponsor
FIELDS TERMINATED BY "," OPTIONALLY ENCLOSED BY '"'
(nSponsor, nomSponsor, typeSponsor, email, telephone)
BEGINDATA
31, "Danone", "Mode", "contact@danone.com", "0345678901"
32, "Cevital", "Beaute", "support@cevital.com", "0456789012"
1, "LuxeCorp", "Mode", "contact@luxecorp.com", "0123456789"
2, "FashionCo", "Beaute", "info@fashionco.com", "0234567890"
3, "StyleGroup", "Accessoires", "hello@stylegroup.com", "0345678901"
4, "ChicBrand", "Vetements", "support@chicbrand.com", "0456789012"
5, "EliteFashion", "Mode", "contact@elitefashion.com", "0567890123"
6, "GlamourWorks", "Cosmetiques", "info@glamourworks.com", "0678901234"
7, "TrendyStyle", "Accessoires", "hello@trendystyle.com", "0789012345"
8, "FashionHaus", "Mode", "support@fashionhaus.com", "0890123456"
9, "GlamZone", "Beaute", "contact@glamzone.com", "0901234567"
10, "ChicSociety", "Mode", "info@chicsociety.com", "1012345678"
11, "StyleMasters", "Accessoires", "hello@stylemasters.com", "1123456789"
12, "FashionTrend", "Mode", "support@fashiontrend.com", "1234567890"
13, "UrbanStyle", "Vetements", "contact@urbanstyle.com", "2345678901"
14, "CosmeticWorld", "Cosmetiques", "info@cosmeticworld.com", "3456789012"
15, "VogueHouse", "Mode", "hello@voguehouse.com", "4567890123"
16, "FashionForward", "Accessoires", "support@fashionforward.com", "5678901234"
17, "EliteStyle", "Beaute", "contact@elitestyle.com", "6789012345"
18, "ChicVibes", "Mode", "info@chicvibes.com", "7890123456"
19, "TrendyBoutique", "Vetements", "hello@trendyboutique.com", "8901234567"
20, "GlamourScene", "Cosmetiques", "support@glamourscene.com", "9012345678"
21, "FashionElite", "Mode", "contact@fashionelite.com", "0123456780"
22, "ChicAndTrendy", "Accessoires", "info@chicandtrendy.com", "1234567801"
23, "UrbanGlam", "Beaute", "hello@urbanglam.com", "2345678902"
24, "FashionSphere", "Mode", "support@fashionsphere.com", "3456789013"
25, "CosmeticLux", "Cosmetiques", "contact@cosmeticlux.com", "4567890124"
26, "GlamFashion", "Mode", "info@glamfashion.com", "5678901235"
27, "ChicPalette", "Accessoires", "hello@chicpalette.com", "6789012346"
28, "EliteGlam", "Beaute", "support@eliteglam.com", "7890123457"
29, "FashionInspire", "Mode", "contact@fashioninspire.com", "8901234568"
30, "StyleFusion", "Accessoires", "info@stylefusion.com", "9012345679"
