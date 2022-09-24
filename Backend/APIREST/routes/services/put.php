<?php
include_once "./config/connect.php";
include_once "controller/put_controller.php";
include_once "protocol/protocol_respons.php";


if(isset( $_GET['id']) and isset( $_GET['nameid'])){

    // --------------------------------------------------------
    // ----------------------------------------------------------
    
    $decode=json_decode(file_get_contents('php://input'),true);

    $password="";
    $clave="";
    $contrasena="";
    foreach ($decode as $key => $value) {
        $password=$decode['password'] ?? null;
        $clave=$decode['clave'] ?? null;
        $contrasena=$decode['contrasena'] ?? null;   
    }

    
    
    // ----------------------------------------------------------------
    // this method value if the table exit and if the atriubutes exite in the database
    // -----------------------------------------------------------------------
    $column=array();
    foreach (array_keys($decode) as $key => $value) {
        
        array_push($column, $value);
    }
    
    array_push($column, $_GET['nameid']);
    $column= array_unique($column);

    
    
        
    if(empty(CONNECT::control_erro($table, $column))){

        PROTOCOL_RESPONS::get_error_404();
        
    }else{

          //------------------------------------------------------ 
        // this  line is for encrypt the password of user
        // --------------------------------------------------- 
        if(!empty($password)){

            $encrip = password_hash($password, PASSWORD_DEFAULT);
            $strval = strval($encrip);
            $array_password = array("password" => $strval);
            $result = array_replace($decode, $array_password);
            
        }
        
        

        //------------------------------------------------------ 
        // this  line is for value, encrypt the clave of user
        // --------------------------------------------------- 
        if(!empty($clave)){
            
            $encrip = password_hash($clave, PASSWORD_DEFAULT);
            $strval = strval($encrip);
            $array = array("clave" => $strval);
            $result = array_replace($decode, $array);
            
            
        }



          //------------------------------------------------------ 
          // this  line is for value, encrypt the contrasena of user
        // --------------------------------------------------- 
    
        if (!empty($contrasena)){

            $encrip = password_hash($contrasena, PASSWORD_DEFAULT);
            $strval = strval($encrip);
            $array = array("contrasena" => $strval);
            $result = array_replace($decode, $array);   
        }

        
        
        // --------------------------------------------------------
        // this method envia the params at controller
        // ----------------------------------------------------------
        $put_controller=new PUT_CONTROLLER();
        $put_controller->set_update($table, $result ?? $decode, $_GET['id'],$_GET['nameid']);
        
    }
}









?>