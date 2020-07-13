#Ecrire un programme en langage Python qui demande à l'utilisateur de saisir son âge  et de lui afficher le message « vous êtes Majeur ! » 
# si l’âge tapé est supérieur ou égale à 18 ans et le message « vous êtes mineur ! » si l’âge tapé est inférieur à 18 ans.


age= input("Tapez votre âge")
age= int(age)   #Permet de convertir en Entier
if(age>=18):         #if veut dire "si" quelque choses. C'est la condition. La pour l'exemple, on pourrait dire: " si l'age est supérieur ou égale a 18"
    print("Vous êtes majeur !")
else: 
    print("Vous êtes mineur ! ") # else veut dire sinon. Si il respecte pas les condition, alors ils auront ce choix la.