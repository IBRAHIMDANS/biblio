<?php 
  
    include_once 'model/connexion_bd.php';
    include_once 'model/utilisateur.php';
    include_once 'model/emprunt.php';
    include_once 'model/categorie.php';
    include_once 'model/livre.php';

?>

<html>
<head>

<title>Bibliotheque</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
</head>
<body>
<div class="container">
<div class="jumbotron">
  <h1 class="display-6">Bibliothèque</h1>

 
</div>
	

	<h2>menu</h2>
	<div class="btn-group" role="group" aria-label="Basic example">
  <button type="button" class="btn btn-secondary" onclick="location.href='index.php'">Acceuil </button>
  <button type="button" class="btn btn-secondary" onclick="location.href='livre.php'">Livres</button>
  <button type="button" class="btn btn-secondary" onclick="location.href='connexion.php'">Connexion</button>
</div>