<?php
include_once "./config/connect.php";
include_once "controller/delete_controller.php";
include_once "protocol/protocol_respons.php";


if(isset( $_GET['id']) and isset( $_GET['nameid'])){

    
    
    // if(empty(CONNECT::control_erro($table, $_GET['nameid']))){

    //     PROTOCOL_RESPONS::get_error_404();

    // }else{

        $put_controller=new DELETE_CONTROLLER();
        $put_controller->set_delete($table, $_GET['id'],$_GET['nameid']);
        
    // }
}