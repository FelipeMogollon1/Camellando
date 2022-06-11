<?php
include_once 'apipelicula.php';

$api = new ApiPeliculas();
$error = '';

if(isset($_POST['first_name']) && isset($_POST['last_name']) && isset($_POST['start_date']) && isset($_POST['email']) && isset($_POST['direction']) && isset($_POST['phone']) && isset($_POST['role']) && isset($_POST['web_site']) && isset($_POST['status']) && isset($_POST['id_city']) && isset($_POST['id_professional']) && isset($_POST['password'])){
    $item = array(
        "first_name"     =>$_POST['first_name'],
        "last_name"      =>$_POST['last_name'],
        "start_date"     =>$_POST['start_date'],
        "email"          =>$_POST['email'],
        "direction"      =>$_POST['direction'],
        "phone"          =>$_POST['phone'],
        "role"           =>$_POST['role'],
        "web_site"       =>$_POST['web_site'],
        "status"         =>$_POST['status'],
        "id_city"        =>$_POST['id_city'],
        "id_professional"=>$_POST['id_professional'],
        "password"       =>$_POST['password']);
    $api->add($item);
}else{
    $api->error('Error al llamar a la API');
    
}
?>
