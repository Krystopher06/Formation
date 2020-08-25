



function solution() {
    let randomNb = Math.floor(Math.random() * 101); // Pour génerer un nombre aléatoire entre 1 et 100
    console.log("le resultat est " + randomNb)
    return randomNb
}

console.log("Accueil")
alert("Bienvenue jeune padawan ! On va jouer à un petit jeux... Tu as 10 essaie pour trouver le bon résultat !!!");
var replay = true
while (replay) {


    let resultat = solution()

    let i = 9; // nombre d'essaie sur 10
    while (i >= 0) {    //Boucle pour i >= au nombre d'essaie restant
        let playerNb = prompt("Tape un nombre entre 0 et 100")
        if (isNaN(playerNb) || playerNb > 100 || playerNb < 0) { // Si le nombre du player n'est pas un nombre (isNAN) ou si il est supérieur 100 ou inférieur a 0 => taper entre 0 et 100
            alert("Tapez un nombre entre 0 et 100")
            i++ //Incrémentation + pour pas diminuer les essaie restant si la personne se trompe sur les condition ci dessus
        } else if (playerNb > resultat) {   // Si le nombre du joueur est superieur au résultat, il dira que c'est moins avec tant d'essaie restant
            alert("C'est moins, il vous reste " + i + " essaie(s) restant")
        } else if (playerNb < resultat) {   // Si le nombre du joueur est inférieur au résultat, il dira que c'est plus avec tant d'essaie restant
            alert("c'est plus, il vous reste " + i + " essaie(s) restant ")
        } else{
            alert("GG") // le else est le égale si on voulait mettre l'anotation playerNb ==resultat, il aurait fallut mettre un else if et pas un else
            break       // Ex: }else if (playerNb == resultat){ alert("GG") }
        }

        i--     
    }   
    replay = confirm("Voulez vous rejouer ?")
    
}















/*
var minResult=0;
var maxResult=100;
var nombre
var essaieRestant;
var randomNumber;

function resultat(){
randomNumber = Math.floor(Math.random() * (maxResult - minResult)) + minResult;
console.log(randomNumber)
return randomNumber;

};



console.log("Acceuil");
alert("Bienvenue jeune padawan ! On va jouer à un petit jeux... Tu as 10 essaie pour trouver le bon résultat !!!");
let random = resultat();
nombre = prompt("Tape un nombre !") ;
while (nombre !== random ){       // Tant que le nombre n'est pas égal au résultat

if (nombre === random){
    alert("GG, Tu as réussi");
};
nombre++
}
















/*var min=0;
var max=100;
function entierAleatoire(min, max)
{
 return Math.floor(Math.random() * (max - min + 1)) + min;
}
//Utilisation
//La variable contient un nombre aléatoire compris entre 1 et 100
var entier = entierAleatoire(1, 100);
console.log(Math)
*/
























/*

var nombreSecret =  20;
var nombre = 100;









*/





