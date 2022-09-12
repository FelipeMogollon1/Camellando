export class tbl_usuarios{
    id_usuarios!: String;    
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
    id_ubicacion!:  String;
    departamento!:  String;
    ciudad!:  String;
}

export class tbl_cargo {
  
    id_cargo ! : String;
    nombre! : String;
}