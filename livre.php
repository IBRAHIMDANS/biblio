<?php 
 include 'header.php';
?>
<h2>Livre</h2>
<p>
Bibliothèque EfreiTech

</p>

<?php 
    $list = livre::getListLivre();
    echo "<table  class='table table-hover'>";
	  echo "<thead>";
     echo "<tr>";
      echo "<th scope='col'>Nom</th>";
     echo "<th scope='col'>Titre</th>";
      echo "<th scope='col'>Auteur</th>";
    echo "</tr>";
   echo "</thead>";
   
    foreach ($list as $ligne){
        echo "<tr>";
        echo "<td>"; echo($ligne['cat_nom'])    ;echo "</td>";
        echo "<td>"; echo($ligne['lvr_titre'])    ;echo "</td>";
        echo "<td>"; echo($ligne['lvr_auteur'])    ;echo "</td>";
        echo "</tr>";
    }
    echo "</table>";

	
?>
    
<?php 
 include 'footer.php';
?>