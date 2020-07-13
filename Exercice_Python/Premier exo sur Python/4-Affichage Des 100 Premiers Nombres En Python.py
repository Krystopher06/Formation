#Ecrire un programme en langage Python  qui affiche les 100 premiers nombres entiers. 
# Pour cela nous allons utiliser la structure répetitive for en Python et la fonction print Python pour afficher le résultat.

print(0)                                                                                         
print(1)                    # on peu afficher  un nombre quelconque en utilisant la fonction/commande "print"               
print(2)

#On aimerait afficher les 100 premiers nombre, on va pas s'amuser à taper les 100 premiers nombre avec la commande "print"

# Il existe une structure répétitive ( une boucle) qui a la commande: " for " ====>

for i in range(0, 101):             # "for" Suivis d'une variable (i) in qui est suivis d'une Suite ("range")
      print(i)                      # Ce qui faut comprendre, c'est que "i" va parcourir la Suite "range"    <!> important => toujours mettre ":" à la fin. 
                                    #On indique le nombre "0" ensuite, on va mettre 101 la dernière valeur est exclue (-1)
                         