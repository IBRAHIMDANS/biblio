<?php 
include 'header.php';

$login = (isset ($_POST['login']))? $_POST['login']: "" ;
$pass  = (isset ($_POST['passwd']))? $_POST['passwd']: "" ;

$connected  = utilisateur::checkConnexion($login, $pass);
session_start();
if ($connected == true){
    $_SESSION['is_loged'] = 1;
    echo "ok";
    header("Location: ../admin_livre.php");
    
}else{
    $_SESSION['is_loged'] = 0;
    echo "nok";
    header("Location: ../index.php");
}


?>