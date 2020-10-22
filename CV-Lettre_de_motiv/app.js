
let bouton = document.getElementsByClassName('patate');
let descriptions = document.getElementsByClassName('text');



bouton.addEventListener('click',navBar);

function navBar(){
    alert("test")
}




//Au lieu de mettre un "onclick" sur chaque bouton de chaque partie du corps, on va utiliser une boucle.
// la boucle for nous permet de mettre tout les boutons dans une seul commande et de toute leurs appliquer le même paramètre. 

/* for (var i = 0; i < boutons.length; i++){ 
    
    // var i = 0; pour que i < au contenant du boutons (length pour longueur) il faut donc incrémenter (i++)

    boutons[i].addEventListener("click", function(){ 
        
        //On créer un détecteur de l'évenement "click" sur l'objet 
        //boutons[i] et lance la function(){ for etc... }

        alert("test")







       /*  for (let j = 0; j < boutons.length; j++) {
            boutons[j].classList.remove('active'); //.classList.remove("class"); Permet de supprimer une class. || on demande de supprimer la classe active sur les boutons (btn)
            };
            this.classList.add('active'); //.classList.add("class"); on ajoute une classe active sur les boutons (btn)

        for(let k = 0; k < descriptions.length; k++){
            descriptions[k].classList.remove("legende");
        
        };
        this.nextElementSibling.classList.add('legende')  */// on cible le "frère" des boutons (btn), qui sont les description (text).
        



  /*   }); */

   // QUAND click , display = bloc pour l'actif
    // clic = change la classe dans le css pour afficher et désafficher les autres



























/* 


//Au lieu de mettre un "onclick" sur chaque bouton de chaque partie du corps, on va utiliser une boucle.
// la boucle for nous permet de mettre tout les boutons dans une seul commande et de toute leurs appliquer le même paramètre. 
for (var i = 0; i < boutons.length; i++){ // var i = 0; pour que i < au contenant du boutons (length pour longueur) il faut donc incrémenter (i++)
    boutons[i].addEventListener("click", function(){ //On créer un détecteur de l'évenement "click" sur l'objet boutons[i] et lance la function(){ for etc... }
        for (let j = 0; j < boutons.length; j++) {
            boutons[j].classList.remove('active'); //.classList.remove("class"); Permet de supprimer une class. || on demande de supprimer la classe active sur les boutons (btn)
            };
            this.classList.add('active'); //.classList.add("class"); on ajoute une classe active sur les boutons (btn)

        for(let k = 0; k < descriptions.length; k++){
            descriptions[k].classList.remove("legende");
        
        };
        this.nextElementSibling.classList.add('legende') // on cible le "frère" des boutons (btn), qui sont les description (text).
        



    });
}
   // QUAND click , display = bloc pour l'actif
    // clic = change la classe dans le css pour afficher et désafficher les autres */