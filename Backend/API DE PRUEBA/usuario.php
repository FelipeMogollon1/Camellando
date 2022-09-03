<?php

include_once'db.php';

class Usuario extends DB{
  
    function obtenerUsuarios(){
        $query = $this->connect()->query('SELECT * FROM tbl_user');    
        return $query;   
    }
    
    function nuevoUsuario($usuario){
        $query = $this->connect()->prepare('INSERT INTO tbl_user 
        (first_name,last_name,start_date,email,direction,phone,role,web_site,status,id_city,id_descriptions_job,password) VALUES
        (:first_name,:last_name,:start_date,:email,:direction,:phone,:role,:web_site,:status,:id_city,:id_descriptions_job,:password)');

        $query->execute(['first_name'         => $usuario['first_name'],
                        'last_name'           => $usuario['last_name'],
                        'start_date'          => $usuario['start_date'],
                        'email'               => $usuario['email'],
                        'direction'           => $usuario['direction'],
                        'phone'               => $usuario['phone'],
                        'role'                => $usuario['role'],
                        'web_site'            => $usuario['web_site'],
                        'status'              => $usuario['status'],
                        'id_city'             => $usuario['id_city'],
                        'id_descriptions_job' => $usuario['id_descriptions_job'],
                        'password'            => $usuario['password']]);
        return $query; 
    }

}
