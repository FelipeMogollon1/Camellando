export class tbl_usuarios{
  
    nombre!: String;
    apellido!: String;
    correo!: String;
    contrasena!: String;
    rol!: String;
    estado!: String;
    fechaRegistro!: String;

}

export class login{  
    password! : String;
    email! : String;
    
}

export class ubicacion {
    departamento!:  String;
    municipio!:  String;
}

export class tbl_descriptions_job {
  
    id_descriptions_job ! : String;
    descriptions_job! : String;
}