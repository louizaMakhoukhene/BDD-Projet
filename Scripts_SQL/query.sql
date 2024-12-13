---------------------------------

-- Requetes 

---------------------------------

--Requêtes sur les Créateurs
--1. Donner le nom de tous les créateurs participant à la Fashion Week se déroulant du jj/mm/aaaa à XX par exemple : du 22-déc-2024 à Londres.
select c.nom,  c.prenom 
from participer p, tenue t, createur c, defile d
where p.nTenue = t.nTenue 
and c.nCreateur = t.nCreateur
and d.nDefile = p.nDefile
and d.dateDefile =  TO_DATE('1990-03-22', 'YYYY-MM-DD')
and d.lieu = 'Paris';

--2.	Lister toutes les collections d'un créateur avec le nombre de tenues par collection.
select c.nom , c.prenom, co.nomCollection, co.nbrTenues
from collection co, createur c
where co.ncreateur = c.ncreateur;


--3.	La moyenne des prix des tenues par Créateur.
select c.nom, c.prenom, avg(t.prix)
from tenue t , createur c
where t.ncreateur = c.ncreateur
group by  c.nom, c.prenom;


--4.	Le créateur avec le plus de tenues crées.
select c.nom, c.prenom, sum(co.nbrTenues) as total_tenues
from collection co, createur c
where co.ncreateur = c.ncreateur
group by c.nom, c.prenom
order by total_tenues desc 
FETCH FIRST 1 ROWS ONLY;





