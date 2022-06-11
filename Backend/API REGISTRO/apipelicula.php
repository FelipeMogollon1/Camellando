<?php

include_once 'pelicula.php';

class ApiPeliculas{

    function getALL(){
        $pelicula = new Pelicula();
        $peliculas = array();
        $peliculas['items'] = array();

        $response = $pelicula->obtenerPeliculas();
        if($response->rowCount())
        {
            while($row = $response->fetch(PDO::FETCH_ASSOC)){
                $item = array(
                    "Id"             =>$row['id_user'],
                    "first_name"     =>$row['first_name'],
                    "last_name"      =>$row['last_name'],
                    "start_date"     =>$row['start_date'],
                    "email"          =>$row['email'],
                    "direction"      =>$row['direction'],
                    "phone"          =>$row['phone'],
                    "role"           =>$row['role'],
                    "web_site"       =>$row['web_site'],
                    "status"         =>$row['status'],
                    "id_city"        =>$row['id_city'],
                    "id_professional"=>$row['id_professional'],
                    "password"       =>$row['password']
                );
                array_push($peliculas['items'],$item);
            }
            echo json_encode($peliculas);           
        }else{
            echo json_encode(array('Mensaje'=>'No hay elementos'));
        }           
    }

    function add($item){
        $pelicula = new Pelicula();
        $res = $pelicula->nuevaPelicula($item);
        $this->exito('Nueva persona registrada');
    }

    function error($mensaje){
        echo json_encode(array('mensaje' => $mensaje));
    }

    function exito($mensaje){
        echo '<code>' . json_encode(array('mensaje' => $mensaje)). '</code>';
    }

    function printJSON($array){
        echo '<code>'.json_encode($array).'</code>';
    }

    function getError(){
        return $this->error;
    }
}

?>