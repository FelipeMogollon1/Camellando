<?php

include_once "./config/connect.php";

class POST_MODEL
{


    private $connect;

    public function __construct()
    {
        $this->connect = CONNECT::conexion();
    }




    public  function set_insert($table, $atribute)
    {

        $param = "";
        $atributes = "";


        foreach ($atribute as $key => $value) {

            $param .= $key . ",";
            $atributes .= ":" . $key . ",";
        }

        $param = substr($param, 0, -1);
        $atributes = substr($atributes, 0, -1);

        $query = "INSERT INTO $table($param) VALUES($atributes)";
        $prepare = $this->connect->prepare($query);

        foreach ($atribute as $key => $value) {

            $prepare->bindParam(":" . $key, $atribute[$key], PDO::PARAM_STR);
        }



        if ($prepare->execute()) {
            PROTOCOL_RESPONS::get_ok_201();
        } else {
            PROTOCOL_RESPONS::get_error_404();
        }
    }
}
