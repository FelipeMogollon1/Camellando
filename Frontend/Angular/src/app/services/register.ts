//-------------------Tablas de inicio de sesión para  Personas y Administrador-------------------
export class tbl_usuarios{
    
    id_usuarios!:   String;
    nombre!:        String;
    apellido!:      String;
    correo!:        String;
    contrasena!:    String;
    rol!:           String;
    estado!:        String;
    fechaRegistro!: String;
}

//-------------------Tablas para Personas-------------------

export class tbl_informacionpersonal{
    
    id_informacionPersonal!: String;
    fechaNacimiento!:        String;
    tipoIdentificacion!:     String;
    numeroIdentificacion!:   String;
    telefono!:               String;
    foto!:                   String;
    ubicacion!:              String;
    direccion!:              String;
    genero!:                 String;
    id_usuarios!:            String;
}

export class tbl_perfilprofesional{
    
    id_perfilProfesional !:         String;
    cargo !:                        String;
    descripcion!:                   String;
    salarioMinimo!:                 String;
    disponibilidadViajar!:          String;
    disponibilidadCambiarDomicilio!:String;
    id_informacionPersonal !:       String;
}

export class id_idioma{
    
    id_idioma  !:          String;
    nombre !:              String;
    nivel!:                String;
    id_perfilProfesional !:String;

}

export class tbl_experiencia{
    
    id_experiencia!:      String;
    nombreCargo!:         String;
    areaProfesional!:     String;
    nombreEmpresa!:       String;
    actividadEmpresa!:    String;
    ubicacion!:           String;
    funcionesLogros!:     String;
    estado !:             String;
    desdeMes!:            String;
    desdeano!:            String;
    hastaMes!:            String;
    hastaAno!:            String;
    id_perfilProfesional!:String;
}

export class tbl_educacion{
    
    id_educacion!:        String;
    areaEstudio!:         String;
    nivel!:               String;
    centroEducativo!:     String;
    estado!:              String;
    desdeMes!:            String;
    desdeano !:           String;
    hastaMes!:            String;
    hastaAno!:            String;
    id_perfilProfesional!:String;
}



//-------------------Tablas Empresa-------------------

export class tbl_perfilempresa{
    
    id_perfilEmpresa!:String;
    nombreEmpresa!:   String;
    correo!:          String;
    contrasena!:      String;
    nit!:             String;
    fechaEstablecida!:String;
    rubro !:          String;
    trabajadores!:    String;
    sitioWeb!:        String;
    ubicacion!:       String;
    direccion!:       String;
    telefono !:       String;
    historiaEmpresa!: String;
    servicios!:       String;
    experiencia!:     String;
    logo!:            String;
    fechaRegistro!:   String;
}

//-------------------Tablas Oferta-------------------

export class tbl_oferta{
    
    id_oferta !:       String;
    tituloTrabajo!:    String;
    cargo!:            String;
    ubicacion!:        String;
    fechaInicio!:      String;
    fechaCierre!:      String;
    experiencia !:     String;
    descripcion!:      String;
    responsabilidades!:String;
    requerimientos!:   String;
    id_perfilEmpresa !:String;
}

//-------------------Tablas Oferta-------------------

export class tbl_postulados{
    
    id_postulados!:       String;
    id_perfilProfesional!:String;
    id_oferta!:           String;
    fecha!:               String;
    estado!:              String;
}


//-------------------Tablas Maestras-------------------
export class ubicacion {

    id_ubicacion!:  String;
    departamento!:  String;
    ciudad!:        String;
}

export class tbl_cargo {  

    id_cargo!: String;
    nombre!:   String;
}

export class tbl_rol {  
    
    id_rol!: String;
    nombre!: String;
}