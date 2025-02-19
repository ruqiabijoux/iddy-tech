<?php
// les entetes requise
header("Access-Control-Allow-Origin:*");
header("Content-type: application/json; charset= UTF-8");
header("Access-Control-Allow-Methods: POST");

require_once ("../config/database.php");
require_once ("../models/etudiant.php");

if($_SERVER['REQUEST_METHOD']=='POST'){
    //on instacle la base de donnees
	$database=new ConnexionDB();
	$db=$database->getConnexion();
	 //on instacle l'objet etudiant
	$etudiant= new Etudiant($db);
 //on recupere les infos envoyees
 $datab = json_decode(file_get_contents("php://input"));
    if (!empty($data->Matricule) && !empty($data->Nom)){
      $etudiant->matricule = htmlspecialchars($data-Matricule);
      $etudiant->nom= htmlspecialchars($data-Nom);
      $etudiant->postnom= htmlspecialchars($data-Postnom);
      $etudiant->sexe= htmlspecialchars($data-Sexe);
      $etudiant->codpro= htmlspecialchars($data-Codepromo);

      $result = $etudiant->creerEtudiant();
        if ($result){
          http_response_code(201);
          echo json_encode(['message' => "etudiant ajoute avec succes"]);
        }else{
           http_response_code(503);
           echo json_encode(['message'=> "lajout de l'etudiant a echoue"]);
        }
    }else{
        echo json_encode(['message' => "les donnees ne sont au complet"]);
    }
}else{
        http_response_code(405);
        echo json_encode(['message' => "la methode n'est pas autorisee"]);
}

?>