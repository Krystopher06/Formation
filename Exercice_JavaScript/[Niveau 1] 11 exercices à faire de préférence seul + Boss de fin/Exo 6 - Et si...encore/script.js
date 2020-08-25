
var age = prompt('Quel âge avez-vous ?');
if(age >= 18 && age <= 69 ){
     alert('Tu peux rentrer');
}
else if (isNaN(age)){
   alert('Ecris ton âge ! Pas de lettres !')
}
else{
   alert('Tu rentre pas');
}



/*
   si  age<18 elle rentre pas
   si age => 18 elle peut rentrer
   si  age > 70 elle rentre pas
   si isNaN(age) Ecris ton age
 */  