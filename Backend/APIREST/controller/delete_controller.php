<?php
include_once "./models/delete_model.php";
include_once "./protocol/protocol_respons.php";

class DELETE_CONTROLLER{

    // -----------------------------------
    // this method is for delete a id
    // -----------------------------------
    public function set_delete($table, $id,$nameid){

            $mod=new DELETE_MODEL();
            $mod->set_delete($table, $id,$nameid);

    }
}

?>