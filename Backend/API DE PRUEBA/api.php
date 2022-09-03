<?php
include_once 'usuario.php';

class Api{

    function getALL(){
        $usuario= new Usuario();
        $usuarios = array();
        $usuarios['items'] = array();

        $response = $usuario->obtenerUsuarios();
        if($response->rowCount())
        {
            while($row = $response->fetch(PDO::FETCH_ASSOC)){
                $item = array(
                    "Id"                  =>$row['id_user'],
                    "first_name"          =>$row['first_name'],
                    "last_name"           =>$row['last_name'],
                    "start_date"          =>$row['start_date'],
                    "email"               =>$row['email'],
                    "direction"           =>$row['direction'],
                    "phone"               =>$row['phone'],
                    "role"                =>$row['role'],
                    "web_site"            =>$row['web_site'],
                    "status"              =>$row['status'],
                    "id_city"             =>$row['id_city'],
                    "id_descriptions_job" =>$row['id_descriptions_job'],
                    "password"            =>$row['password']
                );
                array_push($usuarios['items'],$item);
            }
            echo json_encode($usuarios);
        }else{
            echo json_encode(array('Mensaje'=>'No hay elementos'));
        }           
    }

    function add($item){
        $usuario = new Usuario();
        $res = $usuario->nuevoUsuario($item);
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