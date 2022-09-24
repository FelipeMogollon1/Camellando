<?php
include_once "./config/connect.php";
include_once "./controller/post_controller.php";




if (isset($_POST)) {

 
    $decode=json_decode(file_get_contents('php://input'),true);
    // --------------------------------------------------------
    // this lines of code are for validar if get a param candito for password
    // --------------------------------------------------------
    $password="";
    $clave="";
    $contrasena="";
    foreach ($decode as $key => $value) {
        $password=$decode['password'] ?? null;
        $clave=$decode['clave'] ?? null;
        $contrasena=$decode['contrasena'] ?? null;
        
    }

  
    $column = array();
    foreach (array_keys($decode) as $key => $value) {

        array_push($column, $value);
    }
   
    // --------------------------------------------------------
    // this method value if the table exit and if the atriubutes exit in the database
    // ----------------------------------------------------------
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



    
            //------------------------------------------------------ 
        // this lines value if viene a image and the gurda 
        // --------------------------------------------------- 

        if(!empty($_FILES)){
            $name_column="";
            $name_img="";
            $type="";
            $size="";
            $tmp="";

            
            
            foreach($_FILES as $key => $value ){
                
                 $name_column = $key;
                 $name = $value['name'];
                 $type = $value['type'];
                 $size = $value['size'];  
                 $tmp=$value['tmp_name'];

                }

            $array_img=array($name_column => $name_img);
            $result=array_replace($decode,$array_img); 

            
            
            

            if($size <=100000000){
                if($type == 'image/png' || $type == 'image/jpeg' || $type == 'image/jpg'){

                    $route= $_SERVER['DOCUMENT_ROOT'] . "./img/";

                    move_uploaded_file($_FILES['img']['tmp_name'],$route.$name);
                
                    POST_CONTROLLER::set_insert($table, $result);
                    
                }else{
                    PROTOCOL_RESPONS::get_error_401("the imagen not have the form correcto");
                }
                
            }else{
                PROTOCOL_RESPONS::get_error_401("the size of the image is very big");
            }
            

            
        }else{
            
            
            
            POST_CONTROLLER::set_insert($table, $result ?? $decode );

        }



        
    }
}


