<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: access");
header("Access-Control-Allow-Methods: GET,POST");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

// Conecta a la base de datos  con usuario, contraseña y nombre de la BD
$servidor = "localhost";
$usuario = "root"; 
$contrasenia = "";
$nombreBaseDatos = "camellando_db";
$charset  ="utf8mb4";

$conexionBD = new mysqli($servidor, $usuario, $contrasenia, $nombreBaseDatos);



//Inserta un nuevo registro y recepciona en método post
if(isset($_GET["insertar"])){
    $data = json_decode(file_get_contents("php://input"));
    $nombre=$data->nombre;
    $apellido=$data->apellido;
    $correo=$data->correo;
    $contrasena=$data->contrasena;
    $rol=$data->rol;
    $estado=$data->estado;
    $fechaRegistro=$data->fechaRegistro;

    if(($nombre!="")&&($apellido!="")&&($correo!="")&&($contrasena!="")&&($rol!="")&&($estado!="")&&($fechaRegistro!="")){

        $sqlEmpleaados = mysqli_query($conexionBD,"INSERT INTO tbl_usuarios(nombre, apellido, correo, contrasena, rol, estado, fechaRegistro) 
                                                            VALUES ('$nombre','$apellido','$correo','$contrasena','$rol','$estado','$fechaRegistro')");
        }
    exit();
}

// Consulta todos los registros de la tabla tbl_user id_user
$sqlEmpleaados = mysqli_query($conexionBD,"SELECT * FROM tbl_ubicacion");
if(mysqli_num_rows($sqlEmpleaados) > 0){
    $empleaados = mysqli_fetch_all($sqlEmpleaados,MYSQLI_ASSOC);
    echo json_encode($empleaados);
}else{ 
    echo json_encode([["success"=>0]]); }


