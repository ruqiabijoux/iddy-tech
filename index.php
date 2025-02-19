<?php
 require_once('./config/database.php');
 $db= new ConnexionDB();
 if ($db->getConnexion()){
	echo " il ya connexion!! mundele";
 }
 else{
	echo "Erreur de connexion";
 }
?>