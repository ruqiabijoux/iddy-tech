<?php
class Etudiant{
	private $table='etudiant';
	private $connexion= null;
	//propriete membre de la classe 
	// le public va nous aider a afficher le donnee
	public  $Matricule;
	public  $Nom;
	public  $Postnom;
	public  $Sexe;
	public  $Codepromo;
	
	public function __construct($db)
	{
		if($this->connexion==null){
		$this->connexion=$db;
		}
	}
	public function lireEtudiant(){
		$sql= "select * from $this->table";
		$req=$this->connexion->query($sql);
		return $req;
		
	}
	public function creerEtudiant(){
		$sql="INSERT INTO $this->table(matricule,nom,postnom,sexe,codepro)
		VALUES ('".$this->Matricule."','".$this->Nom."','".$this->Postnom."',
		'".$this->Sexe."','".$this->Codepromo."')";
		//preparation de la requete
		$req=$this->Connexion->prepare($sql);
		//execution de la requete
		$re=$req->execute();
		if ($re) {
			return true;
		}
		else {
			return false;
		}
	}
	public function ModifierEtudiant(){
		$sql="Update $this->table set nom='" .$this->Nom."',postnom='" .$this->postnom."',sexe='" .$this->Sexe."',codpro='" .$this->Codpromo."'
		where matricule='".$this->Matricule."'";
		//preparation de la requete
		$req=$this->connexion->prepare($req);
		//execution de la requete
		$re=$req->execute();
		if($re){
			return true;
		}else{
			return false;
		}

	}

}
?>