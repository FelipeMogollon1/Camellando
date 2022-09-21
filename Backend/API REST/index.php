<?php

include_once "protocol/protocol_respons.php";
$option = $_SERVER['REQUEST_METHOD'];
PROTOCOL_RESPONS::headerHttpDev($option);


include_once "controller/routes_controller.php";
$__controller_routes = new ROUTE_CONTROLLER();
$__controller_routes->index();
