<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: access");
header("Access-Control-Allow-Methods: GET,POST");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

class DB{
    private $host;
    private $db;
    private $user;
    private $password;
    private $charset;


public function __construct()
{
    $this->host     ="localhost";
    $this->db       ="camellando_db";
    $this->user     ="root";
    $this->password ="";
    $this->charset  ="utf8mb4";

}

function connect()
    {
        try{
            $connection = "mysql:host=".$this->host.";dbname=".$this->db.";charset=".$this->charset;
            $options = [
                    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
                    PDO::ATTR_EMULATE_PREPARES =>false
            ];
            $pdo = new PDO($connection,$this->user,$this->password);

            return $pdo;

        }catch (PDOException $e){
            print_r(value:"Error de Conexión: :(" . $e->getMessage());
        }
    } 

}