<?php

class CONNECT {
  

  public static function info_db(){

     $array=[
      'db_name' => 'camellando_db',
      'root' => 'root',
      'password' => '',

    ];

    return $array;
  }






 // -----------------------------------------------------------------------------------------
  // this method do the connect at the database
  // -----------------------------------------------------------------------------------------

  public static function conexion()
  {
    try{
       $conexion=new PDO("mysql:host=localhost;dbname=". CONNECT::info_db()['db_name'],CONNECT::info_db()['root'],CONNECT::info_db()['password'] );
       $conexion->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
       $conexion->exec("set names utf8mb4");
      
       return $conexion;

    }catch(PDOException $e){

       die($e->getMessage());

    } 
  }

  // -----------------------------------------------------------------------------------------
  // this method is for control the erros, when escriba  not bien the name of the table or the colum
  // -----------------------------------------------------------------------------------------
  public static function control_erro($table ,$select){
    $database= CONNECT::info_db()['db_name'];
    
    $validator= CONNECT::conexion()
    ->query("SELECT COLUMN_NAME AS item from  information_schema.columns WHERE table_schema= '$database' and table_name = '$table'")
    ->fetchAll(PDO::FETCH_OBJ);


    if(empty($validator)){

      return null;

    }else{

      if($select[0]=='*'){

        array_shift($select);

      }

      $sum=0;
      foreach($validator as $key => $value){

           $sum += in_array($value->item,$select); 

      }

        
      return $sum == count($select) ? $validator : null;

    }

  }
  
}



?>