<?php
class Frais{
	private $table='frais';
	private $connexion= null;
	//propriete membre de la classe 
	// le public va nous aider a afficher le donnee
	public  $codefrais;
	public  $montantpaye;
	public  $libellefrais;

	
	public function __construct($db)
	{
		if($this->connexion==null){
		$this->connexion=$db;
		}
	}
	public function lireFrais(){
		$sql= "select * from $this->table";
		$req=$this->connexion->query($sql);
		return $req;
		
	}
}
?>