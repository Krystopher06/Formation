1) Ecrivez la requête permettant d'obtenir la liste des 10 villes les plus peuplées en 2012

SELECT * FROM `villes_france_free` 
ORDER BY `ville_population_2012` DESC 
LIMIT 10;

2) Ecrivez la requête permettant d'obtenir la liste des 50 villes ayant la plus faible superficie

SELECT * FROM `villes_france_free` 
ORDER BY `ville_surface` ASC 
LIMIT 50;

3) Ecrivez la requête permettant d'obtenir la liste des départements d’outre-mer, c’est-à-dire ceux dont le numéro de département commencepar “97”

SELECT *FROM `departement`
WHERE `departement_code` 
LIKE '97%';


4) Ecrivez la requête permettant d'obtenir le nom des 10 villes les plus peuplées en 2012, ainsi que le nom du département associé


SELECT ville_nom,departement_nom, ville_population_2012, departement_code
FROM villes_france_free 
INNER JOIN departement ON ville_departement= departement_code
ORDER BY ville_population_2012 DESC LIMIT 10

\\\\\\\\\\\\\\\\\\\\

SELECT ville_nom,departement_nom, ville_population_2012, departement_code
FROM villes_france_free , departement 
WHERE ville_departement = departement_code
ORDER BY  ville_population_2012 DESC LIMIT 10

5) Ecrivez la requête permettant d'obtenir la liste du nom de chaque département, associé à son
code et du nombre de commune au sein de ces départements, en triant afin d’obtenir en priorité les
départements qui possèdent le plus de communes

/* COUNT(ville_departement) AS nombre_ville */
/* Le AS de Count permet de créer/attribuer un nom */

SELECT departement_nom, departement_code,COUNT(ville_departement) AS nombre_ville
FROM departement
INNER JOIN villes_france_free ON ville_departement = departement_code
GROUP BY departement_nom
ORDER BY  nombre_ville DESC



6) Ecrivez la requête permettant d'obtenir la liste des 10 plus grands départements, en terme de
superficie

SELECT departement_nom, departement_code,SUM(ville_surface) AS nb_surface
FROM departement
INNER JOIN villes_france_free ON ville_departement = departement_code
GROUP BY departement_nom
ORDER BY  nb_surface DESC
LIMIT 10




7) Ecrivez la requête permettant de compter le nombre de villes dont le nom commence par “Saint”

SELECT COUNT(ville_nom)
FROM villes_france_free
WHERE ville_nom
LIKE 'Saint%';





8) Ecrivez la requête permettant d'obtenir la liste des villes qui ont un nom existants plusieurs fois, et
trier afin d’obtenir en premier celles dont le nom est le plus souvent utilisé par plusieurs communes


SELECT ville_nom,count(ville_nom) AS ville_compte
FROM villes_france_free
GROUP BY ville_nom
HAVING ville_compte > 1
ORDER BY ville_compte DESC


9) Ecrivez la requête permettant d'obtenir en une seule requête SQL la liste des villes dont la
superficie est supérieure à la superficie moyenne

SELECT ville_surface,ville_nom
FROM villes_france_free
GROUP BY ville_nom
HAVING ville_surface > (SELECT AVG(ville_surface)
FROM villes_france_free)



10) Ecrivez la requête permettant d'obtenir la liste des départements qui possèdent plus de 2
millions d’habitants

SELECT departement_nom, departement_code,SUM(ville_population_2012) AS population
FROM departement
INNER JOIN villes_france_free ON ville_departement = departement_code
GROUP BY departement_nom
HAVING population > 2000000
ORDER BY  population DESC
LIMIT 10











