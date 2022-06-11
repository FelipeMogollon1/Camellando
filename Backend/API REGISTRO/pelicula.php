<?php

include_once'db.php';

class Pelicula extends DB{
  
    function obtenerPeliculas(){
        $query = $this->connect()->query('SELECT * FROM tbl_user');    
        return $query;   
    }
    
    function nuevaPelicula($pelicula){
        $query = $this->connect()->prepare('INSERT INTO tbl_user 
        (first_name,last_name,start_date,email,direction,phone,role,web_site,status,id_city,id_professional,password) VALUES
        (:first_name,:last_name,:start_date,:email,:direction,:phone,:role,:web_site,:status,:id_city,:id_professional,:password)');

        $query->execute(['first_name'     => $pelicula['first_name'],
                        'last_name'       => $pelicula['last_name'],
                        'start_date'      => $pelicula['start_date'],
                        'email'           => $pelicula['email'],
                        'direction'       => $pelicula['direction'],
                        'phone'           => $pelicula['phone'],
                        'role'            => $pelicula['role'],
                        'web_site'        => $pelicula['web_site'],
                        'status'          => $pelicula['status'],
                        'id_city'         => $pelicula['id_city'],
                        'id_professional' => $pelicula['id_professional'],
                        'password'        => $pelicula['password']]);
        return $query; 
    }

}
