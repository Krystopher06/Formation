# Ecrire un programme en langage Python qui demande à l'utilisateur de Saisir son Nombre Entier et de lui afficher si ce nombre est Pair ou Impair

# -*- coding: utf-8 -*-

n = input("Tapez la valeur de n: ") #Lorsque l'utilisateur tape la valeur de l'entier "n", cette valeur sera récuperé sur la variable "n"
#j'examine si l'entier "n" est pair ou impair du coup on convertit "n" en nombre "Entier"
n = int(n) 
#Une fois la valeur tapé et récuperé sur un Entier "n", je dois examiner si cette Entier "n" est Pair ou impair !
#Pour cela, on va utiliser l'opérateur pourcentage

r= n % 2 # r= l'opérateur pourcentage
if( r ==0 ):                                                                    # La condition if (“si”) ;
    print("Le nombre n tapé est pair")                                          # La condition if…else (“si…sinon”) ;
else:                                    # On utilise la condition if else ici  # La condition if…elif…else (“si…sinon si… sinon”)
    print("Le nombre n tapé est impair")
