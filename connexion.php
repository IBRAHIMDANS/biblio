<?php 
 include 'header.php';
?>
<h2>Connexion</h2>
<p>
<marquee direction="left" >Bienvenue Bibliothèque EfreiTech</marquee>


 <form method="post" action="controller/connexion_controller.php">
 
 <form>
  <div class="form-group">
    <label for="exampleInputEmail1">login</label>
    <input type="login" class="form-control" id="exampleInputEmail1" name="login" placeholder="Entrer votre login">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="Mot de passe" class="form-control" id="exampleInputPassword1" placeholder="Entrer votre mot de passe">
  </div>
  <button type="submit" class="btn btn-primary">Connexion</button>
</form>



</p>

<?php 
 include 'footer.php';
?>