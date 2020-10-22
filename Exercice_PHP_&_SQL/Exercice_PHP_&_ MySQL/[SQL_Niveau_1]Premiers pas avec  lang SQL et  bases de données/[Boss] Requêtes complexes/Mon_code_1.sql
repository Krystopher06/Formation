1) Obtenir l’utilisateur ayant le prénom "Muriel" 
et le mot de passe (en clair) "test11", sachant que
l’encodage du mot de passe est effectué avec l’algorithme Sha1


SELECT *
FROM `client`
WHERE `prenom` = 'Muriel'
AND `password` = SHA1('test11')

2) Obtenir la liste de tous les produits qui sont présent sur plusieurs commandes.



SELECT nom, COUNT(*) AS nbr_items
FROM `commande_ligne`
GROUP BY nom
HAVING  nbr_items> 1
ORDER BY nbr_items DESC


3) Obtenir la liste de tous les produits qui sont présent sur plusieurs commandes et y ajouter une
colonne qui liste les identifiants des commandes associées.

SELECT nom, COUNT(*) AS nbr_items, GROUP_CONCAT(commande_id)
FROM `commande_ligne`
GROUP BY nom
HAVING  nbr_items> 1
ORDER BY nbr_items DESC



4) Enregistrer le prix total à l’intérieur de chaque ligne des commandes, en fonction du prix unitaire
et de la quantité

UPDATE commande_ligne
SET prix_total = prix_unitaire*quantite


5) Obtenir le montant total pour chaque commande et y voir facilement la date associée à cette
commande ainsi que le prénom et nom du client associé

/* MA VERSION
SELECT  commande.id,commande_ligne.commande_id, `client`.`nom`,`client`.prenom, date_achat, ROUND(SUM(commande_ligne.prix_total),2)
FROM commande,`client`,commande_ligne
WHERE commande.id = commande_ligne.commande_id AND commande.client_id =`client`.id
GROUP BY commande_ligne.commande_id
*/

version remi

SELECT commande.reference, client.prenom, client.prenom, ROUND(SUM(commande_ligne.prix_total), 2) 
FROM commande 
INNER JOIN commande_ligne ON commande_ligne.commande_id = commande.id 
INNER JOIN client ON client.id = commande.client_id 
GROUP BY commande_ligne.commande_id 
ORDER BY commande.reference ASC 




6) (Attention - question difficile) Enregistrer le montant total de chaque commande dans le champ
intitulé “cache_prix_total”


UPDATE commande
INNER JOIN
(
SELECT ROUND(SUM(commande_ligne.prix_total),2)
FROM commande_ligne, commande
WHERE commande.id = commande_ligne.commande_id
GROUP BY commande.id
) commande_ligne ON commande.id = commande_ligne.commande_id
SET commande.cache_prix_total = commande_ligne.prix_total





UPDATE commande
INNER JOIN
(
SELECT commande_ligne.commande_id, ROUND(SUM(commande_ligne.prix_total),2)
GROUP BY commande_ligne.commande_id
) commande_ligne ON commande.id = commande_ligne.commande_id
SET commande.cache_prix_total = commande_ligne.prix_total





.
UPDATE commande
INNER JOIN
(
SELECT commande_ligne.commande_id, ROUND(SUM(commande_ligne.prix_total),2) AS total
FROM commande_ligne
GROUP BY commande_ligne.commande_id
) commande_ligne ON commande.id = commande_ligne.commande_id
SET commande.cache_prix_total = commande_ligne.total



7) Obtenir le montant global de toutes les commandes, pour chaque mois


SELECT MONTH(date_achat) AS mois, ROUND(SUM(cache_prix_total),2) AS total_du_mois
FROM commande
GROUP BY mois


8) Obtenir la liste des 10 clients qui ont effectué le plus grand montant de commandes, et obtenir ce
montant total pour chaque client.




limit 10 

