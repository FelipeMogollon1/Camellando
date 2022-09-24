<?php
include_once "models/get_model.php";


class GET_CONTROLLER
{



    // --------------------------------------------------------------------------
    // this  method retunr all the value and have the clasules order by and limit
    // -------------------------------------------------------------------------- 

    public function get_query_all($table, $select, $column, $order_by, $init, $finit)
    {
        $query = new GET_MODEL();
        $funt = $query->get_all($table, $select, $column, $order_by, $init, $finit);

        $validation= new GET_CONTROLLER();
        // $validation->get_validation($funt,"succes");
        return $funt;
        
        
    }


    // ---------------------------------------------------------------------------------
    // this  method retunr all the value and have the clasules order by , limit and where
    // -------------------------------------------------------------------------- -----
    public function get_query_filter($table, $select, $linkto, $equalto, $column, $order_by, $init, $finit)
    {
      
        $query = new GET_MODEL();
        $funt =  $query->get_filte($table, $select, $linkto, $equalto, $column, $order_by, $init, $finit);
        $validation= new GET_CONTROLLER();
        $validation->get_validation($funt,"succes");
        return $funt;
       
    }


    // -----------------------------------------------------------------------------------------------------------------
    // this  method retunr all the value and have the clasules order by, limit and relation the table with the inner join
    // -----------------------------------------------------------------------------------------------------------------
    public function get_query_relation($rel, $type, $select, $column, $order_by, $init, $finit)
    {
        $query = new GET_MODEL();
        $funt = $query->get_query_relation($rel, $type, $select, $column, $order_by, $init, $finit);
        $validation= new GET_CONTROLLER();
        $validation->get_validation($funt,"succes");
        return $funt;
       
    }


    // --------------------------------------------------------------------
    // this  method retunr the query with relation and the clasule where
    // --------------------------------------------------------------------
    public function get_query_relation_where($select, $rel, $type, $linkto, $equalto, $column, $orde_by, $init, $finit)
    {
        
        $query = new GET_MODEL();
        $funt = $query->get_query_relation_where($select, $rel, $type, $linkto, $equalto, $column, $orde_by, $init, $finit);
        $validation= new GET_CONTROLLER();
        $validation->get_validation($funt,"succes");
        return $funt;
        
    }


     // --------------------------------------------------------------------
    // this  method retunr the search with the clasule like
    // --------------------------------------------------------------------
    public function get_query_search($select, $table, $linkto, $search, $column, $orde_by, $init, $finit)
    {
       
        $query = new GET_MODEL();
        $funt = $query->get_query_search($select, $table, $linkto, $search, $column, $orde_by, $init, $finit);
        $validation= new GET_CONTROLLER();
        $validation->get_validation($funt,"succes");
        return $funt;
       
    }

   // --------------------------------------------------------------------
    // this  method retunr the search with the clasule like and relation the table
    // --------------------------------------------------------------------
    public function get_query_search_relation($select, $type, $rel, $linkto, $search, $column, $orde_by, $init, $finit)
    {
        
        $query = new GET_MODEL();
        $funt = $query->get_query_search_relation($select, $type, $rel, $linkto, $search, $column, $orde_by, $init, $finit);
        $validation= new GET_CONTROLLER();
        $validation->get_validation($funt,"succes");
        return $funt;
        
        
    }


       // --------------------------------------------------------------------
    // this  method retunr the atributes with ranges
    // --------------------------------------------------------------------
    public function get_query_between($select, $table, $between1, $between2, $linkto, $column, $orde_by, $init, $finit, $filter, $into)
    {
           
            $query = new GET_MODEL();
            $funt = $query->get_query_between($select, $table, $between1, $between2, $linkto, $column, $orde_by, $init, $finit, $filter, $into);
            $validation= new GET_CONTROLLER();
            $validation->get_validation($funt,"succes");
            return $funt;
       
    }

        // --------------------------------------------------------------------
    // this  method retunr the atributes with ranges and relation
    // --------------------------------------------------------------------
    public function get_query_between_relation($select, $rel, $type, $between1, $between2, $linkto, $column, $orde_by, $init, $finit, $filter, $into)
    {
        
            $query = new GET_MODEL();
            $funt = $query->get_query_between_relation($select, $rel, $type, $between1, $between2, $linkto, $column, $orde_by, $init, $finit, $filter, $into);
            $validation= new GET_CONTROLLER();
            $validation->get_validation($funt,"succes");
            return $funt;
    }



        // --------------------------------------------------------------------
    // this  method value if all are ok
    // --------------------------------------------------------------------
    public function get_validation($param,$result){

        if(!empty($param)){
            PROTOCOL_RESPONS::get_ok_200($result);
        }else{
            PROTOCOL_RESPONS::get_error_404();

        }

    }
}
