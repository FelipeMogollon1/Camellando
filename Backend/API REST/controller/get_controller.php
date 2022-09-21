<?php
include_once "models/get_model.php";


class GET_CONTROLLER
{



    // --------------------------------------------------------------------------
    // this  method retunr all the value and have the clasules order by and limit
    // -------------------------------------------------------------------------- 

    public function get_query_all($table, $select, $column, $order_by, $init, $finit)
    {
        if (!empty($table)) {
            // PROTOCOL_RESPONS::get_ok_200();

            $query = new GET_MODEL();
            return $query->get_all($table, $select, $column, $order_by, $init, $finit);
        } else {
            PROTOCOL_RESPONS::get_error_404();
        }
    }


    // ---------------------------------------------------------------------------------
    // this  method retunr all the value and have the clasules order by , limit and where
    // -------------------------------------------------------------------------- -----
    public function get_query_filter($table, $select, $linkto, $equalto, $column, $order_by, $init, $finit)
    {
        if (!empty($table)) {
            PROTOCOL_RESPONS::get_ok_200();
            $query = new GET_MODEL();
            return $query->get_filte($table, $select, $linkto, $equalto, $column, $order_by, $init, $finit);
        } else {
            PROTOCOL_RESPONS::get_error_404();
        }
    }

    // -----------------------------------------------------------------------------------------------------------------
    // this  method retunr all the value and have the clasules order by, limit and relation the table with the inner join
    // -----------------------------------------------------------------------------------------------------------------
    public function get_query_relation($rel, $type, $select, $column, $order_by, $init, $finit)
    {
        if (!empty($type)) {
            PROTOCOL_RESPONS::get_ok_200();
            $query = new GET_MODEL();
            return $query->get_query_relation($rel, $type, $select, $column, $order_by, $init, $finit);
        } else {
            PROTOCOL_RESPONS::get_error_404();
        }
    }



    public function get_query_relation_where($select, $rel, $type, $linkto, $equalto, $column, $orde_by, $init, $finit)
    {
        if (!empty($rel)) {
            PROTOCOL_RESPONS::get_ok_200();
            $query = new GET_MODEL();
            return $query->get_query_relation_where($select, $rel, $type, $linkto, $equalto, $column, $orde_by, $init, $finit);
        } else {
            PROTOCOL_RESPONS::get_error_404();
        }
    }

    public function get_query_search($select, $table, $linkto, $search, $column, $orde_by, $init, $finit)
    {
        if (!empty($table)) {
            PROTOCOL_RESPONS::get_ok_200();
            $query = new GET_MODEL();
            return $query->get_query_search($select, $table, $linkto, $search, $column, $orde_by, $init, $finit);
        } else {
            PROTOCOL_RESPONS::get_error_404();
        }
    }


    public function get_query_search_relation($select, $type, $rel, $linkto, $search, $column, $orde_by, $init, $finit)
    {
        if (!empty($rel)) {
            PROTOCOL_RESPONS::get_ok_200();
            $query = new GET_MODEL();
            return $query->get_query_search_relation($select, $type, $rel, $linkto, $search, $column, $orde_by, $init, $finit);
        } else {
            PROTOCOL_RESPONS::get_error_404();
        }
    }

    public function get_query_between($select, $table, $between1, $between2, $linkto, $column, $orde_by, $init, $finit, $filter, $into)
    {
        if (!empty($table)) {
            PROTOCOL_RESPONS::get_ok_200();
            $query = new GET_MODEL();
            return $query->get_query_between($select, $table, $between1, $between2, $linkto, $column, $orde_by, $init, $finit, $filter, $into);
        } else {
            PROTOCOL_RESPONS::get_error_404();
        }
    }


    public function get_query_between_relation($select, $rel, $type, $between1, $between2, $linkto, $column, $orde_by, $init, $finit, $filter, $into)
    {
        if (!empty($rel)) {
            PROTOCOL_RESPONS::get_ok_200();
            $query = new GET_MODEL();
            return $query->get_query_between_relation($select, $rel, $type, $between1, $between2, $linkto, $column, $orde_by, $init, $finit, $filter, $into);
        } else {
            PROTOCOL_RESPONS::get_error_404();
        }
    }
}
