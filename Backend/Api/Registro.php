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
    $password=$data->password;
    $first_name=$data->first_name;
    $last_name=$data->last_name;
    $start_date=$data->start_date;
    $email=$data->email;
    $direction=$data->direction;
    $phone=$data->phone;
    $role=$data->role;
    $web_site=$data->web_site;
    $status=$data->status;
    $id_city=$data->id_city;
    $id_descriptions_job=$data->id_descriptions_job;
        if(($password!="")&&($first_name!="")&&($last_name!="")&&($start_date!="")&&($email!="")&&($direction!="")&&($phone!="")&&($role!="")&&($web_site!="")&&($status!="")&&($id_city!="")&&($id_descriptions_job!="")){
         
            $sqlEmpleaados = mysqli_query($conexionBD,"INSERT INTO tbl_user( password, first_name, last_name, start_date, email, direction, phone, role, web_site, status, id_city, id_descriptions_job) 
            VALUES ('$password','$first_name','$last_name','$start_date','$email','$direction','$phone','$role','$web_site','$status','$id_city','$id_descriptions_job') ");
        }
    exit();
}

// Consulta todos los registros de la tabla tbl_user id_user
$sqlEmpleaados = mysqli_query($conexionBD,"SELECT * FROM tbl_city");
if(mysqli_num_rows($sqlEmpleaados) > 0){
    $empleaados = mysqli_fetch_all($sqlEmpleaados,MYSQLI_ASSOC);
    echo json_encode($empleaados);
}else{ 
    echo json_encode([["success"=>0]]); }


