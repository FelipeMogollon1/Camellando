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



// Consulta todos los registros de la tabla tbl_user id_user
$sql = mysqli_query($conexionBD,"SELECT email,password FROM tbl_user");
if(mysqli_num_rows($sql) > 0){
    $user = mysqli_fetch_all($sql,MYSQLI_ASSOC);
    echo json_encode($user);
}else{ 
    echo json_encode([["success"=>0]]); }


