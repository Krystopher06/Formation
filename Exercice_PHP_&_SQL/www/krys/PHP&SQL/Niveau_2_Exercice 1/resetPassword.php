<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<!-- https://www.developpez.net/forums/d1417886/php/langage/genere-url-unique/ -->
<body>
    <?php

    function issetSubmit($var){
        if(isset($_POST["submit"]))
        {
            return $var;
        }
    }
    /* verifier requete poste existante if isset ($_post)*/
    if (isset($_POST["submit"])) {
        $mailR = $_POST['user_mailReset'];
        $mailValidR = !empty($mailR) &&
            preg_match("/@/", $mailR) &&
            (preg_match("/.com/", $mailR) ||
                preg_match("/.fr/", $mailR));
                
        $result = true;
    }
    

   
        
    

    if (isset($_POST["submit"])) {


        if (!empty($mailR) && preg_match("/@/", $mailR) && (preg_match("/.com/", $mailR) || preg_match("/.fr/", $mailR))
        ) {

            $mailResetError =null;
           
             
        }else{
            
            $mailResetError = "Le champ n'est pas respecté"; 
        }


        
        if ($result == $mailValidR)
        {

            try {

                $pdoConnect = new PDO("mysql:host=localhost;dbname=niveau_2", "root", "");
                $pdoConnect->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                
                $query = "SELECT * FROM `utilisateurs` WHERE Email = '$mailR' ";
                $data = $pdoConnect->query($query);
                $mailExist = $data->fetch();
                

                

                if ($mailExist) {

                   $subject = "Récup MDP";
                   $body ="<p>Veuillez cliquez ci-dessous afin de rénitialiser votre mot de passe</p>
                            <a href= \"http://localhost/krys/PHP&SQL/Niveau_2_Exercice%201/newPassword.php\" target=\"_blank\" > Cliquez ICI </a>";
                    include 'sendemail.php';
                 
                    send_mail($mailR, $subject, $body);

                    header('Location: http://localhost/krys/PHP&SQL/Niveau_2_Exercice%201/exitPasswordReset.php');
                    
                }else{
                    $mailExistError = "Le mail existe pas";
                }
            }catch (PDOException $e) {
                echo "error 2";
                $e->getMessage();
            }

        
        };}

    ?>
<!-- includes/reset-request.inc.php -->
    <form method="POST" action="">
        <div>
            <div>
                <label for="mailReset">Veuillez saisir le mail </label>
                <br> <br>
                <input type="text" id="mailReset" name="user_mailReset">
                <span><?PHP if (isset($_POST["submit"])) { echo $mailResetError;}  ?></span>

            </div>
            <br>
            <button type="submit" name="submit">Envoyer</button><br><br>
            <span><?PHP if (isset($mailExistError)){echo $mailExistError;}  ?></span>
        </div>
    </form>

</body>
</html>