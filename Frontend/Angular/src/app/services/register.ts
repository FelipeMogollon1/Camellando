export class tbl_user{
  
    id_user! : String;
    password! : String;
    first_name! : String;
    last_name! : String;
    start_date! : String;
    email! : String;
    direction! : String;
    phone! : String;
    role! : String;
    web_site! : String;
    status! : String;
    id_city! : String;
    id_descriptions_job! : String;
}

export class login{  
    password! : String;
    email! : String;
    
}

export class ubicacion {
    region!:  String;
    c_digo_dane_del_departamento!:  String;
    departamento!:  String;
    c_digo_dane_del_municipio!:  String;
    municipio!:  String;
}

export class tbl_descriptions_job {
  
    id_descriptions_job ! : String;
    descriptions_job! : String;
}