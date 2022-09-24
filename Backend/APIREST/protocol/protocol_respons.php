<?php

class PROTOCOL_RESPONS
{

    // this  is an array global for all the method
    public  $respos = [
        "status" => 0,
        "result" => array()
    ];
    // --------------------------------------------
    // this  is the line of all the code 200
     // --------------------------------------------
    public static function get_ok_200($result)
    {
        $respos['status'] = 200;
        $respos['result'] = array($result);
        $json = json_encode($respos, http_response_code($respos['status']));
        print_r($json);
        // return $json;

    }

    public static function get_ok_201()
    {
        $respos['status'] = 201;
        $respos['result'] = array("los se guardaron correctamente");
        $json = json_encode($respos, http_response_code($respos['status']));
        print_r($json);
        // return $json;
    }


     // --------------------------------------------
    // this line is of all code 400
     // --------------------------------------------

    public static function get_error_401($result)
    {
        $respos['status'] = 401;
        $respos['result'] = array($result);
        $json = json_encode($respos, http_response_code($respos['status']));
        print_r($json);
        // return $json;
    }

    public static function get_error_404()
    {
        $respos['status'] = 404;
        $respos['result'] = array("no se encuentra la informacion solicitada");
        $json = json_encode($respos, http_response_code($respos['status']));
        print_r($json);
        // return $json;
    }


    // -------------------------------------------------------------------
    // this  method is for to give permmision to user for consume the api
     // ---------------------------------------------------------------
    final public static function headerHttpDev($method)
    {
        if ($method == 'OPTIONS') {
            exit(0);
        }

        header("Access-Control-Allow-Origin: *");
        header('Access-Control-Allow-Methods: GET,PUT,POST,PATCH,DELETE');
        header("Allow: GET, POST, OPTIONS, PUT, PATCH , DELETE");
        header("Access-Control-Allow-Headers: X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Authorization");
        header('Content-Type: application/json'); 
    }
}
