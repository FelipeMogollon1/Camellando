<?php
include_once "protocol/protocol_respons.php";




$routes_array= explode("/",$_SERVER['REQUEST_URI']);
$routes_array= array_filter($routes_array);





// this comes is for see, if for the url are empty

if(count($routes_array)==0){

    PROTOCOL_RESPONS::get_error_404();
}

if(count($routes_array) == 1 && isset($_SERVER['REQUEST_METHOD'])){
    $table = explode("?", $routes_array[1])[0];
    $method= $_SERVER['REQUEST_METHOD'];

    switch ($method) {
        case 'GET':
            
            include_once "services/get.php";
            break;
    
        case 'POST':
            include_once "services/post.php";
            break;
    
        case 'PUT':
            echo "este es el metodo put";
            break;
    
        case 'DELETE':
            echo "este es el metodo DELETE";
            break;
    
    }
}

?>