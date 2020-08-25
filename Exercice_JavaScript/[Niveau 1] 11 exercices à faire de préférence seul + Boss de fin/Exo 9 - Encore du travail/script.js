

//Ecrivez ici la boucle qui vous permet d'enlever 1 unité d'or de la mine et d'annoncer
//dans la console combien il reste d'or dans la mine.
var mine = 100;
while ( mine >= 0 ){
    console.log("Il reste " + mine + " lingot d'or")
    if ( mine <= 0 ){
        break
    }
   mine--
  
}
console.log("Travail terminé")