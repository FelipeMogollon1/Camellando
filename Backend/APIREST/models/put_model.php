<?php
include_once "./config/connect.php";
include_once "get_model.php";


class PUT_MODEL{

    private $connect;

    public function __construct()
    {
        $this->connect = CONNECT::conexion();
    }

    // --------------------------------------------
    // this method is for update in the database
    // -------------------------------------------
    public function set_update($table,$data,$id,$nameid){

        try {

            $set="";
            foreach($data as $key => $value){

                $set.= $key ."=:" . $key .",";
            }

            // print_r($set);
            // return;
            $set=substr($set,0 ,-1);



           $query="UPDATE $table SET $set WHERE $nameid = :$nameid";
            $stm= $this->connect->prepare($query);
    
            foreach ($data as $key => $value) {
                $stm->bindParam(":" . $key,$data[$key],PDO::PARAM_STR);
            }
                $stm->bindParam(":" .$nameid,$id,PDO::PARAM_STR);

                if($stm->execute()){
                    PROTOCOL_RESPONS::get_ok_200("the information are modify");
                }else{
                    PROTOCOL_RESPONS::get_error_404();

                }

        } catch (Exception $e) {
            return $e->getMessage();
        }

        
        



    }






}






?>