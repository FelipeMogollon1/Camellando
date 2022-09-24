<?php

include_once "models/put_model.php";
include_once "protocol/protocol_respons.php";

class PUT_CONTROLLER{

    // -------------------------------------------
    // this method get of datas of folder services and the envia at PUT_MODEL
    // -----------------------------------------------
    public function set_update($table,$data,$id,$nameid){
       
           $put_model=new PUT_MODEL();
           $stm=$put_model->set_update($table,$data, $id,$nameid);
        
    }

}