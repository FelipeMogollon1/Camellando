<?php
include_once "./routes/routes.php";
include_once "controller/get_controller.php";



$select = $_GET['select'] ?? "*";

// -------------------------------------------------------
//  this params get the parametros for order the elemens 
// --------------------------------------------------------
$order_by = $_GET['order'] ?? null;
$column = $_GET['column'] ?? null;
// -------------------------------------------
//  this params are for limit the registros 
// -----------------------------------------
$init = $_GET['init'] ?? null;
$finit = $_GET['finit'] ?? null;
// ---------------------------------------
//  this params is for filter of datas with the clasule between
// -----------------------------------
$filter = $_GET['filter'] ?? null;
$into = $_GET['into'] ?? null;



$__get_controller = new GET_CONTROLLER();


// ----------------------------------------------
// this method is for do query with the clasule where
// -----------------------------------------------

if (isset($_GET['linkto']) && isset($_GET['equalto']) and !isset($_GET['rel']) && !isset($_GET['type'])) {

    print_r(json_encode( $__get_controller->get_query_filter($table, $select, $_GET['linkto'], $_GET['equalto'], $column, $order_by, $init, $finit)));

   



    // ----------------------------------------------
    // this method is for relation table with the clasule inner join
    // -----------------------------------------------

} else if (isset($_GET['rel']) && isset($_GET['type']) && $table == "relation" && !isset($_GET['linkto'])  && !isset($_GET['equalto'])) {

    print_r(json_encode( $__get_controller->get_query_relation($_GET['rel'], $_GET['type'], $select, $column, $order_by, $init, $finit)));

    



    // ----------------------------------------------
    // this method is for relation table with the clasule inner join and what's more have the clausel where
    // -----------------------------------------------

} else if (isset($_GET['rel']) && isset($_GET['type']) && $table == "relation" && isset($_GET['linkto']) && isset($_GET['equalto'])) {

    print_r(json_encode($__get_controller->get_query_relation_where($select, $_GET['rel'], $_GET['type'], $_GET['linkto'], $_GET['equalto'], $column, $order_by, $init, $finit)));





    // ----------------------------------------------
    // this method is for do search whit the clasule like
    // -----------------------------------------------

} else if (isset($_GET["linkto"]) and isset($_GET["search"]) and !isset($_GET['rel']) and !isset($_GET['type'])) {

    print_r(json_encode($__get_controller->get_query_search($select, $table, $_GET['linkto'], $_GET['search'], $column, $order_by, $init, $finit)));


    

    // ----------------------------------------------
    // this method is for relation table with the clasule inner join and what's more have the clasule like
    // -----------------------------------------------
} else if ($table == "relation" and isset($_GET["linkto"]) and isset($_GET["search"]) and isset($_GET['rel']) and isset($_GET['type'])) {

    print_r(json_encode($__get_controller->get_query_search_relation($select, $_GET['type'],$_GET['rel'] ,  $_GET['linkto'], $_GET['search'], $column, $order_by, $init, $finit)));


    


    // ----------------------------------------------
    // this method is for relation table with the clasule between 
    // -----------------------------------------------

} else if (isset($_GET['between1']) and isset($_GET['between2']) and isset($_GET['linkto']) and !isset($_GET['rel']) and !isset($_GET['type'])) {

    print_r(json_encode($__get_controller->get_query_between($select, $table, $_GET['between1'], $_GET['between2'], $_GET['linkto'], $column, $order_by, $init, $finit, $filter, $into)));





   // ----------------------------------------------
    // this method is for relation table with the clasule between and what's more with the inner join
    // -----------------------------------------------

}else if (isset($_GET['rel']) and isset($_GET['type']) and $table == "relation" and isset($_GET['between1']) and isset($_GET['between2']) and isset($_GET['linkto'])) {

    print_r(json_encode($__get_controller->get_query_between_relation($select, $_GET['rel'],$_GET['type'], $_GET['between1'], $_GET['between2'], $_GET['linkto'], $column, $order_by , $init, $finit, $filter, $into)));


    // ----------------------------------------------
    // this method retunr all 
    // -----------------------------------------------
}else{

    print_r(json_encode( $__get_controller->get_query_all($table, $select, $column, $order_by, $init, $finit)));
    
}
