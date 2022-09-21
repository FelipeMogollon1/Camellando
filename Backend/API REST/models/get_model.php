<?php
include_once "config/connect.php";
class GET_MODEL
{

    private $connect;

    public function __construct()
    {
        $this->connect = CONNECT::conexion();
    }







    // ------------------------------------------------------------------------
    // this  method is for do query undefiltered
    // ------------------------------------------------------------------------
    public function get_all($table, $select, $column, $orde_by, $init, $finit)
    {
        
        try {

        // ------------------------------------------------------------------------
        // this  method is for controlle the error, when not are encuentre the table 
        // ------------------------------------------------------------------------


             $select_array=explode(",",$select);

            if(empty(CONNECT::control_erro($table,$select_array))){
                return null;
            }

            $query = "SELECT $select FROM $table";

            // ------------------------------------------------------------------------
            // this  query is with order by
            // ------------------------------------------------------------------------
            if ($column != null and $orde_by != null and $init == null and $finit == null) {
                $query = "SELECT $select FROM $table order by $column $orde_by ";
            }


            // ------------------------------------------------------------------------
            // this query is with limit
            // ------------------------------------------------------------------------
            if ($column == null and $orde_by == null and $init != null and $finit != null) {
                $query = "SELECT $select FROM $table limit $init , $finit ";
            }

            // ------------------------------------------------------------------------
            // this  query is with orde by and limit
            // ------------------------------------------------------------------------
            if ($column != null and $orde_by != null and $init != null and $finit != null) {
                $query = "SELECT $select FROM $table order by $column $orde_by limit $init,$finit";
            }


            $execute = $this->connect->prepare($query);
            $execute->execute();
            return $execute->fetchAll(PDO::FETCH_CLASS);
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }



    // ------------------------------------------------------------------------
    // this  method is for do query with filter 
    // ------------------------------------------------------------------------
    public function get_filte($table, $select, $linkto, $equalto, $column, $orde_by, $init, $finit)
    {
        try {

             // ------------------------------------------------------------------------
        // this  method is for controlle the error, when not are encuentre the table 
        // ------------------------------------------------------------------------

            
        
            $select_array=explode(",",$select);
            $linkto_array = explode(",", $linkto);


            foreach($linkto_array as $key => $value){

                array_push($select_array,$value);

            }

            
           
            if(empty(CONNECT::control_erro($table,$select_array))){
                return null;
            }

            $equalto_array = explode("_", $equalto);
            $AND = "";

            if (count($linkto_array) > 1) {
                foreach ($linkto_array as $key => $value) {
                    if ($key > 0) {

                        $AND .= "AND " . $value . " = :" . $value . " ";
                    }
                }
            }

            $query = "SELECT $select FROM $table where $linkto_array[0] = :$linkto_array[0] $AND ";
            // ------------------------------------------------------------------------
            // this  query is with orden by
            // ------------------------------------------------------------------------
            if ($column != null and $orde_by != null  and $init == null and $finit == null) {
                $query = "SELECT $select FROM $table where $linkto_array[0] = :$linkto_array[0] $AND ORDER BY $column $orde_by ";
            }

            // ------------------------------------------------------------------------
            // this  query is with limit 
            // ------------------------------------------------------------------------
            if ($column == null and $orde_by == null and $init != null and $finit != null) {
                $query = "SELECT $select FROM $table where $linkto_array[0] = :$linkto_array[0] $AND  limit $init,$finit ";
            }

            // ------------------------------------------------------------------------
            // this  query is with order by and limit
            // ------------------------------------------------------------------------
            if ($column != null and $orde_by != null and $init != null and $finit != null) {
                $query = "SELECT $select FROM $table where $linkto_array[0] = :$linkto_array[0] $AND ORDER BY $column $orde_by limit $init , $finit";
            }


            $execute = $this->connect->prepare($query);

            foreach ($linkto_array as $key => $value) {
                $execute->bindParam(":" . $value, $equalto_array[$key], PDO::PARAM_STR);
            }
            $execute->execute();
            return $execute->fetchAll(PDO::FETCH_CLASS);
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }



    // ------------------------------------------------------------------------
    // this  method is for do query and do relationes with the inner join
    // ------------------------------------------------------------------------
    public function get_query_relation($rel, $type, $select, $column, $orde_by, $init, $finit)
    {
        try {
            
             
            $rel_array = explode(",", $rel);
            $type_array = explode(",", $type);

            $inner_join = "";

            if (count($rel_array) > 1) {   
                foreach ($rel_array as $key => $value) {
                    // ------------------------------------------------------------------------
                    // this  method is for controlle the error, when not are encuentre the table 
                    // ------------------------------------------------------------------------
                 
                    
                    if(empty(CONNECT::control_erro($value,['*']))){
                        return null;
                    }

                    // ----------------------------------------------------------------------
                    // this lines are for do inner join dinamy
                    // ------------------------------------------------------------------------
                        
                    if ($key > 0) {

                        $inner_join .= "INNER JOIN " . $value . " ON " . $rel_array[0] . ".id_" . $type_array[$key] . "=" . $value . ".id_" . $type_array[$key] . " ";
                    }
                }

                
                $query = "SELECT $select FROM $rel_array[0] $inner_join";


                // ------------------------------------------------------------------------
                // this  query is with order by
                // ------------------------------------------------------------------------
                if ($column != null and $orde_by != null and $init == null and $finit == null) {
                    $query = "SELECT $select FROM $rel_array[0] $inner_join order by $column $orde_by ";
                }

                // ------------------------------------------------------------------------
                // this query is with limit
                // ------------------------------------------------------------------------
                if ($column == null and $orde_by == null and $init != null and $finit != null) {
                    $query = "SELECT $select FROM $rel_array[0]  $inner_join limit $init , $finit ";
                }

                // ------------------------------------------------------------------------
                // this  query is with orde by and limit
                // ------------------------------------------------------------------------
                if ($column != null and $orde_by != null and $init != null and $finit != null) {
                    $query = "SELECT $select FROM $rel_array[0] $inner_join order by $column $orde_by limit $init,$finit";
                }

                $execute = $this->connect->prepare($query);
                $execute->execute();
                return $execute->fetchAll(PDO::FETCH_CLASS);
            } else {
                return null;
            }
        } catch (Exception $e) {
            return null;
        }
    }


    // ------------------------------------------------------------------------
    //  this  method is for do query  relations with the inner join and clasule where
    // ------------------------------------------------------------------------
    public function get_query_relation_where($select, $rel, $type, $linkto, $equalto, $column, $orde_by, $init, $finit)
    {
        try {



            $linkto_array = explode(",", $linkto);
            $equalto_array = explode("_", $equalto);
            $AND = "";

            if (count($linkto_array) > 1) {
                foreach ($linkto_array as $key => $value) {
                   


                    if ($key > 0) {

                        $AND .= "AND " . $value . " = :" . $value . " ";
                    }
                }
            }



            // ------------------------------------------------------------------------
            // this for is of the inner join
            // ------------------------------------------------------------------------   



            $rel_array = explode(",", $rel);
            $type_array = explode(",", $type);

            $inner_join = "";

            if (count($rel_array) > 1) {
                foreach ($rel_array as $key => $value) {

                     // ------------------------------------------------------------------------
                     // this  method is for controlle the error, when not are encuentre the table 
                     // ------------------------------------------------------------------------
                    
                    if(empty(CONNECT::control_erro($value,['*']))){
                        return null;
                    }


                    if ($key > 0) {

                        $inner_join .= "INNER JOIN " . $value . " ON " . $rel_array[0] . ".id_" . $type_array[$key] . "=" . $value . ".id_" . $type_array[$key] . " ";
                    }
                }



                $query = "SELECT $select FROM $rel_array[0]  $inner_join  WHERE  $linkto_array[0] = :$linkto_array[0] $AND";

                // ------------------------------------------------------------------------
                // this  query is with order by
                // ------------------------------------------------------------------------
                if ($column != null and $orde_by != null and $init == null and $finit == null) {
                    $query = "SELECT $select FROM $rel_array[0]   $inner_join where  $linkto_array[0] = :$linkto_array[0] $AND order by $column $orde_by ";
                }

                // ------------------------------------------------------------------------
                // this query is with limit
                // ------------------------------------------------------------------------
                if ($column == null and $orde_by == null and $init != null and $finit != null) {
                    $query = "SELECT $select FROM $rel_array[0]  $inner_join  where $linkto_array[0] = :$linkto_array[0] $AND limit $init , $finit ";
                }

                // ------------------------------------------------------------------------
                // this  query is with orde by and limit
                // ------------------------------------------------------------------------
                if ($column != null and $orde_by != null and $init != null and $finit != null) {
                    $query = "SELECT $select FROM $rel_array[0]   $inner_join where $linkto_array[0] = :$linkto_array[0] $AND order by $column $orde_by limit $init,$finit";
                }



                $execute = $this->connect->prepare($query);
                foreach ($linkto_array as $key => $value) {
                    $execute->bindParam(":" . $value, $equalto_array[$key], PDO::PARAM_STR);
                }
                $execute->execute();
                return $execute->fetchAll(PDO::FETCH_CLASS);
            } else {
                return null;
            }
        } catch (PDOException $e) {
            // die($e->getMessage());
            return null;
        }
    }


    // ------------------------------------------------------------------------
    // this  method is for do search with the clause like
    // ------------------------------------------------------------------------
    public function get_query_search($select, $table, $linkto, $search, $column, $orde_by, $init, $finit)
    {
        try {

            // ------------------------------------------------------------------------
             // this  method is for controlle the error, when not are encuentre the table 
             // ------------------------------------------------------------------------
             $select_array=explode(",",$select);
             if(empty(CONNECT::control_erro($table,$select_array))){
                return null;
            }


            $linkto_array = explode(",", $linkto);
            $search_array = explode("_", $search);
            $AND = "";

            if (count($linkto_array) > 1) {
                foreach ($linkto_array as $key => $value) {
                    if ($key > 0) {

                        $AND .= "AND " . $value . " = :" . $value . " ";
                    }
                }
            }


            $query = "SELECT $select FROM $table WHERE $linkto_array[0] LIKE  '%$search_array[0]%' $AND ";

            // ------------------------------------------------------------------------
            // this  query is with order by
            // ------------------------------------------------------------------------
            if ($column != null and $orde_by != null and $init == null and $finit == null) {
                $query = "SELECT $select FROM $table WHERE $linkto_array[0] LIKE  '%$search_array[0]%' $AND order by $column $orde_by ";
            }


            // ------------------------------------------------------------------------
            // this query is with limit
            // ------------------------------------------------------------------------
            if ($column == null and $orde_by == null and $init != null and $finit != null) {
                $query = "SELECT $select FROM $table WHERE $linkto_array[0] LIKE  '%$search_array[0]%' $AND  limit $init , $finit ";
            }

            // ------------------------------------------------------------------------
            // this  query is with orde by and limit
            // ------------------------------------------------------------------------
            if ($column != null and $orde_by != null and $init != null and $finit != null) {
                $query = "SELECT $select FROM $table WHERE $linkto_array[0] LIKE  '%$search_array[0]%' $AND  order by $column $orde_by limit $init,$finit";
            }


            $execute = $this->connect->prepare($query);
            foreach ($linkto_array as $key => $value) {
                if ($key > 0) {

                    $execute->bindParam(":" . $value, $search_array[$key], PDO::PARAM_STR);
                }
            }
            $execute->execute();
            return $execute->fetchAll(PDO::FETCH_CLASS);
        } catch (Exception $e) {
            return null;
        }
    }

    // ------------------------------------------------------------------------
    // this  method is for do query do search and relation table
    // ------------------------------------------------------------------------
    public function get_query_search_relation($select, $type, $rel, $linkto, $search, $column, $orde_by, $init, $finit)
    {
        try {



            $linkto_array = explode(",", $linkto);
            $search_array = explode("_", $search);
            $AND = "";

            if (count($linkto_array) > 1) {
                foreach ($linkto_array as $key => $value) {
                    if ($key > 0) {

                        $AND .= "AND " . $value . " = :" . $value . " ";
                    }
                }
            }



            // ------------------------------------------------------------------------
            // this for is of the inner join
            // ------------------------------------------------------------------------   



            $rel_array = explode(",", $rel);
            $type_array = explode(",", $type);

            $inner_join = "";

            if (count($rel_array) > 1) {
                foreach ($rel_array as $key => $value) {
                // ------------------------------------------------------------------------
                // this  method is for controlle the error, when not are encuentre the table 
                // ------------------------------------------------------------------------
                
                if(empty(CONNECT::control_erro($value,['*']))){
                return null;
                }

                    if ($key > 0) {

                        $inner_join .= "INNER JOIN " . $value . " ON " . $rel_array[0] . ".id_" . $type_array[$key] . "=" . $value . ".id_" . $type_array[$key] . " ";
                    }
                }



                $query = "SELECT $select FROM $rel_array[0]  $inner_join  WHERE  $linkto_array[0] LIKE  '%$search_array[0]%' $AND";

                // ------------------------------------------------------------------------
                // this  query is with order by
                // ------------------------------------------------------------------------
                if ($column != null and $orde_by != null and $init == null and $finit == null) {
                    $query = "SELECT $select FROM $rel_array[0]   $inner_join where $linkto_array[0] LIKE  '%$search_array[0]%'  $AND order by $column $orde_by ";
                }

                // ------------------------------------------------------------------------
                // this query is with limit
                // ------------------------------------------------------------------------
                if ($column == null and $orde_by == null and $init != null and $finit != null) {
                    $query = "SELECT $select FROM $rel_array[0]  $inner_join  where $linkto_array[0] LIKE  '%$search_array[0]%' $AND limit $init , $finit ";
                }


                // ------------------------------------------------------------------------
                // this  query is with orde by and limit
                // ------------------------------------------------------------------------
                if ($column != null and $orde_by != null and $init != null and $finit != null) {
                    $query = "SELECT $select FROM $rel_array[0]   $inner_join where $linkto_array[0] LIKE  '%$search_array[0]%'  $AND order by $column $orde_by limit $init,$finit";
                }


                $execute = $this->connect->prepare($query);
                foreach ($linkto_array as $key => $value) {
                    if ($key > 0) {

                        $execute->bindParam(":" . $value, $search_array[$key], PDO::PARAM_STR);
                    }
                }
                $execute->execute();
                return $execute->fetchAll(PDO::FETCH_CLASS);
            } else {
                return null;
            }
        } catch (Exception $e) {
            return null;
        }
    }

    // ------------------------------------------------------------------------
    // this  tethod is for do query with the clasule between
    // ------------------------------------------------------------------------

    public function get_query_between($select, $table, $between1, $between2, $linkto, $column, $orde_by, $init, $finit, $filter, $into)
    {
        try {
            // ------------------------------------------------------------------------
             // this  method is for controlle the error, when not are encuentre the table 
             // ------------------------------------------------------------------------
            $select_array=explode(",",$select);
             if(empty(CONNECT::control_erro($table,$select_array))){
                return null;
            }


            $filterto = "";

            if($filter != null){
                $filter_array=explode(",",$filter);

            }else{

                $filter_array=array();
            }

            if ($filter != null and $into != null) {
                $filterto .= " AND " . $filter . " in (" . $into . ")";
            }

            $query = "SELECT $select FROM $table WHERE $linkto BETWEEN $between1 and $between2  $filterto ";

            // ------------------------------------------------------------------------
            // this  query is with order by
            // ------------------------------------------------------------------------
            if ($column != null and $orde_by != null) {
                $query = "SELECT $select FROM $table  WHERE $linkto BETWEEN $between1 and $between2 $filterto order by $column $orde_by ";
            }

            // ------------------------------------------------------------------------
            // this  query is with limit 
            // ------------------------------------------------------------------------
            if ($column == null and $orde_by == null and $init != null and $finit != null) {
                $query = "SELECT $select FROM $table  WHERE $linkto BETWEEN $between1 and $between2 $filterto   limit $init,$finit ";
            }

            // ------------------------------------------------------------------------
            // this  query is with order by and limit
            // ------------------------------------------------------------------------
            if ($column != null and $orde_by != null and $init != null and $finit != null) {
                $query = "SELECT $select FROM $table  WHERE $linkto BETWEEN $between1 and $between2 $filterto  ORDER BY $column $orde_by limit $init , $finit";
            }




            $execute = $this->connect->prepare($query);
            $execute->execute();
            return $execute->fetchAll(PDO::FETCH_CLASS);
        } catch (Exception $e) {
            return null;
        }
    }



     // ------------------------------------------------------------------------
    // this  tethod is for do query with the clasule between and what's more have the clasule inner join
    // ------------------------------------------------------------------------

    public function get_query_between_relation($select, $rel,$type, $between1, $between2, $linkto, $column, $orde_by, $init, $finit, $filter, $into)
    {
        try {

            // ------------------------------------------------------------------------
            // this  line is relation with the clasule inner join. note: this lines are for do dynamic the relation
            // ------------------------------------------------------------------------
            $rel_array = explode(",", $rel);
            $type_array = explode(",", $type);

            $inner_join = "";

            if (count($rel_array) > 1) {
                foreach ($rel_array as $key => $value) {
                    // ------------------------------------------------------------------------
                    // this  method is for controlle the error, when not are encuentre the table 
                    // ------------------------------------------------------------------------
                    
                    if(empty(CONNECT::control_erro($value,['*']))){
                     return null;
                    }

                    if ($key > 0) {

                        $inner_join .= "INNER JOIN " . $value . " ON " . $rel_array[0] . ".id_" . $type_array[$key] . "=" . $value . ".id_" . $type_array[$key] . " ";
                    }
                }



             // ------------------------------------------------------------------------
            // this  line is filter with the clasule between
            // ------------------------------------------------------------------------    
            $filterto = "";

            if ($filter != null and $into != null) {
                $filterto .= " AND " . $filter . " in (" . $into . ")";
            }


            $query = "SELECT $select FROM $rel_array[0] $inner_join WHERE $linkto BETWEEN $between1 and $between2  $filterto ";

            // ------------------------------------------------------------------------
            // this  query is with order by
            // ------------------------------------------------------------------------
            if ($column != null and $orde_by != null) {
                $query = "SELECT $select FROM $rel_array[0] $inner_join  WHERE $linkto BETWEEN $between1 and $between2 $filterto order by $column $orde_by ";
            }

            // ------------------------------------------------------------------------
            // this  query is with limit 
            // ------------------------------------------------------------------------
            if ($column == null and $orde_by == null and $init != null and $finit != null) {
                $query = "SELECT $select FROM $rel_array[0] $inner_join  WHERE $linkto BETWEEN $between1 and $between2 $filterto   limit $init,$finit ";
            }

            // ------------------------------------------------------------------------
            // this  query is with order by and limit
            // ------------------------------------------------------------------------
            if ($column != null and $orde_by != null and $init != null and $finit != null) {
                $query = "SELECT $select FROM $rel_array[0] $inner_join  WHERE $linkto BETWEEN $between1 and $between2 $filterto  ORDER BY $column $orde_by limit $init , $finit";
            }




            $execute = $this->connect->prepare($query);
            $execute->execute();
            return $execute->fetchAll(PDO::FETCH_CLASS);
        }else{
            return null;
        } 
        }catch (Exception $e) {
            die($e->getMessage());
        }
    }










}
