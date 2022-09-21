<?php
include_once "./models/post_model.php";
include_once "./protocol/protocol_respons.php";

class POST_CONTROLLER{


    public static function set_insert($table,$atribute){

        if(!empty($table)){

            $mod=new POST_MODEL();
            $mod->set_insert($table,$atribute);

        }else{

            PROTOCOL_RESPONS::get_error_404();
        }

    }







    
}






