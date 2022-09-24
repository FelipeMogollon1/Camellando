<?php

// include_once "protocol/protocol_respons.php";
// $option = $_SERVER['REQUEST_METHOD'];
// PROTOCOL_RESPONS::headerHttpDev($option);

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: access");
header('Access-Control-Allow-Methods: GET,PUT,POST,PATCH,DELETE');
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");


header("Allow: GET, POST, OPTIONS, PUT, PATCH , DELETE");
header("Access-Control-Allow-Headers: X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Authorization");
header('Content-Type: application/json'); 

include_once "controller/routes_controller.php";
$__controller_routes = new ROUTE_CONTROLLER();
$__controller_routes->index();
