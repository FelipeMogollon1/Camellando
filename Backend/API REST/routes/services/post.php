<?php
include_once "./config/connect.php";
include_once "./controller/post_controller.php";




if (isset($_POST)) {

    $array = array();


    foreach (array_keys($_POST) as $key => $value) {

        array_push($array, $value);
    }




    if (empty(CONNECT::control_erro($table, $array))) {

        return null;
    } else {
        if(isset($_POST['password'])){



        
        // this  line is for value, encrypt the password of user 
        foreach ($_POST as $key => $value) {

            $password = $_POST['password'];
        }

        $encrip = password_hash($password, PASSWORD_DEFAULT);
        $s = strval($encrip);

        $tt = array("password" => $s);

        $canasta = array_replace($_POST, $tt);

        POST_CONTROLLER::set_insert($table, $canasta);
    }else{
            POST_CONTROLLER::set_insert($table, $_POST);

        }
    }
}
