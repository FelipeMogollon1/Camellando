<?php
include_once "./config/connect.php";
class DELETE_MODEL{

    private $connect;

    public function __construct()
    {
        $this->connect = CONNECT::conexion();
    }

    // ------------------------------------------
    // this method delete a user of the database
    // -----------------------------------------
    public function set_delete($table,$id,$nameid){

        try {

           $query="DELETE FROM $table  WHERE $nameid = :$nameid ";
            $stm= $this->connect->prepare($query);

                $stm->bindParam(":".$nameid,$id,PDO::PARAM_STR);

                if($stm->execute()){
                    PROTOCOL_RESPONS::get_ok_200("the id are deleted");
                }else{
                    PROTOCOL_RESPONS::get_error_404();

                }

        } catch (Exception $e) {
            return NULL;
        }

    }

}

