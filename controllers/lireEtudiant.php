<?php
// les entetes requise
header("Access-Control-Allow-Origin:*");
header("Content-type: application/json; charset= UTF-8");
header("Access-Control-Allow-Methods: GET");

require_once ("../config/database.php");
require_once ("../models/etudiant.php");

if($_SERVER['REQUEST_METHOD']=='GET'){
	$bdd=new ConnexionDB();
	$db1=$bdd->getConnexion();
	//installation de la classe  etudiant
	$etudiant= new Etudiant($db1);
	$recup=$etudiant->lireEtudiant();
	if ($recup->rowCount()>0){
		$data=[];
		$data[]=$recup->fetchAll();
		//renvoie de donnees
		echo json_encode($data);
	}

	echo json_encode(['Message'=>'Methode Autorisee mwadjuma']);	
}
else{
	echo json_encode(['Message'=>"Methode nonAutorisee mwadjuma"]);
}
?>