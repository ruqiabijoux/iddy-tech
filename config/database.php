<?php
class ConnexionDB{
    
    private $host='localhost';
    private $dbnam='labo';
    private $user='root';
    private $pwd='2005';

    // function pour la connexion a la base de donnee
    function getConnexion(){
        $conn=null;
        try{
            $conn = new PDO(
                "mysql:host=$this->host;
                dbname=$this->dbnam;port=3306",
                $this->user,$this->pwd,
                [
                    PDO::ATTR_ERRMODE=>PDO::ERRMODE_EXCEPTION,
                    PDO::ATTR_DEFAULT_FETCH_MODE=>PDO::FETCH_ASSOC
                ]
            );
            return $conn;
        }
        catch(PDOException $es){
			echo $es->getMessage();

        }
    }
} 
?>