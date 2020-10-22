1. Afficher la liste des étudiants triés par ordre croissant de date de naissance

SELECT date_naissance, prenom, nom
FROM etudiant
ORDER BY date_naissance

2. Afficher tous les étudiants inscrits à M1 et tous les étudiants inscrits à M2.

SELECT CONCAT(prenom,' ',nom) AS eleve, niveau
FROM etudiant
WHERE niveau
LIKE 'M1%'
OR
niveau LIKE 'M2%'






3. Afficher les matricules des étudiants qui ont passé l'examen du cours 002.

/*Ma version*/
SELECT  CONCAT(prenom,' ',nom) AS eleve, etudiant.matricule,examen.matricule,note
FROM etudiant, examen 
WHERE  etudiant.matricule  LIKE 'e002%'
AND examen.matricule LIKE 'e002%'







/*Version Terence*/
select matricule from examen where code='002'


/*Ma version avec soluce terence*/
SELECT  CONCAT(prenom,' ',nom) AS eleve, etudiant.matricule,examen.matricule,note
FROM etudiant, examen 
WHERE  CODE='002'





4. Afficher les matricules de tous les étudiants qui ont passé l'examen du cours 001 et
de tous les étudiants qui ont passé l'examen du cours 002.



SELECT  etudiant.matricule,examen.matricule,note
FROM etudiant, examen 
WHERE  (CODE='002' OR CODE='001') AND note >= 10




5. Afficher le matricule, code, note /20 et note /40 de tous les examens classés par
ordre croissant de matricule et de code.

SELECT matricule, `code`,`note` AS `note/20`, note*2 AS `note/40`
FROM examen
ORDER BY matricule, `code` ASC





6. Trouver la moyenne de notes de cours 002.


SELECT AVG (note)
FROM examen
WHERE CODE=002


7. Compter les examens passés par un étudiant (exemple avec matricule 'e001')

SELECT COUNT(*)
FROM examen
WHERE matricule = 'e001'


8. Compter le nombre d'étudiants qui ont passé l'examen du cours 002.
SELECT COUNT(*)
FROM examen
WHERE `code` = 002 AND note >= 10


9. Calculer la moyenne des notes d'un étudiant (exemple avec matricule 'e001').

SELECT AVG(note)
FROM examen
WHERE matricule = 'e001'

10.Compter les examens passés par chaque étudiant.

SELECT COUNT(*), etudiant.nom
FROM examen, etudiant
WHERE etudiant.matricule = examen.matricule AND note >=10
GROUP BY etudiant.matricule

11.Calculer la moyenne des notes pour chaque étudiant.
SELECT AVG(note), examen.matricule
FROM examen
GROUP BY examen.matricule

12.Même question, mais afficher seulement les étudiants (et leurs moyennes) dont la moyenne est >= 15.

SELECT AVG(note) AS moyenne,etudiant.nom
FROM examen, etudiant
WHERE etudiant.matricule = examen.matricule
GROUP BY etudiant.matricule
HAVING moyenne >=15


13.Trouver la moyenne de notes de chaque cours.

SELECT cours.nom_cours, AVG(note)
FROM examen, cours
WHERE cours.`code`= examen.`code`
GROUP BY cours.`code`
