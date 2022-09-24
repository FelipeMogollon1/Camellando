import { Component, OnInit } from '@angular/core';
import { FormGroup,FormBuilder,FormControl, Validators } from '@angular/forms';
import { RegisterService } from 'src/app/services/register.service';
import { Router} from '@angular/router';


@Component({
  selector: 'app-resgister',
  templateUrl: './resgister-personas.component.html',
  styleUrls: ['./resgister-personas.component.css']
})

export class ResgisterComponent implements OnInit {
  resultado!: string;
  Ciudad:any;
  Categoria:any;
  USUARIO:any;


  Idioma = false;
  //----------------- Div-----------------//
  usuario = true;
  informacionPersonal  = false;
  perfilProfesional  = false;
  formacion = false;
  experienciaLaboral = false;

  
  formularioUsuario:FormGroup;
  formularioInformacionPersonal:FormGroup;
  formularioperfilProfesional:FormGroup;
  formularioFormacion:FormGroup;
  formularioExperienciaLaboral:FormGroup;
  formularioIdioma:FormGroup;

  constructor(
    public formulario:FormBuilder,
    private registerService:RegisterService,
    private ruteador:Router  
  ) {


    this.formularioUsuario=this.formulario.group({
      id_usuarios: [''],
      nombre : ['',Validators.required],
      apellido : ['',Validators.required],
      correo : ['',[Validators.required,Validators.email]],
      contrasena : ['',[Validators.required,Validators.minLength(5)]],
      rol : ['2'],
      estado : ['Activo'],
      fechaRegistro : [date] 
      
    });



    this.formularioInformacionPersonal=this.formulario.group({  
      id_informacionPersonal: [''],
      fechaNacimiento: ['',[Validators.required,Validators.minLength(10)]],
      tipoIdentificacion: ['',Validators.required],
      numeroIdentificacion: ['',[Validators.required,Validators.minLength(5)]],
      telefono: ['',[Validators.required,Validators.minLength(8)]],
      foto: [''],
      ubicacion: ['',[Validators.required,Validators.minLength(2)]],
      direccion: ['',[Validators.required,Validators.minLength(5)]],
      genero: ['',Validators.required],
      id_usuarios: [''] 
     });

     this.formularioperfilProfesional=this.formulario.group({
      id_perfilProfesional: [''],
      cargo: ['',[Validators.required,Validators.minLength(2)]],
      descripcion: ['',[Validators.required,Validators.minLength(10)]],
      salarioMinimo: ['',[Validators.required,Validators.minLength(9)]],
      disponibilidadViajar: ['',[Validators.required,Validators.minLength(2)]],
      disponibilidadCambiarDomicilio: ['',[Validators.required,Validators.minLength(2)]],
      id_informacionPersonal: ['']
     });

     this.formularioFormacion=this.formulario.group({
      id_educacion: [''],
      areaEstudio: ['',[Validators.required,Validators.minLength(2)]],
      nivel: ['',[Validators.required,Validators.minLength(2)]],
      centroEducativo: ['',[Validators.required,Validators.minLength(2)]],
      estado: ['',[Validators.required,Validators.minLength(2)]],
      desdeMes: ['',[Validators.required,Validators.minLength(2)]],
      desdeano: ['',[Validators.required,Validators.minLength(2)]],
      hastaMes: ['',[Validators.required,Validators.minLength(2)]],
      hastaAno: ['',[Validators.required,Validators.minLength(2)]],
      id_perfilProfesional: ['']
     })

     this.formularioExperienciaLaboral=this.formulario.group({
      id_experiencia: [''],
      nombreCargo: ['',[Validators.required,Validators.minLength(2)]],
      areaProfesional: ['',[Validators.required,Validators.minLength(2)]],
      nombreEmpresa: ['',[Validators.required,Validators.minLength(2)]],
      actividadEmpresa: ['',[Validators.required,Validators.minLength(2)]],
      ubicacion: ['',[Validators.required,Validators.minLength(2)]],
      funcionesLogros: ['',[Validators.required,Validators.minLength(2)]],
      estado: ['',[Validators.required,Validators.minLength(2)]],
      desdeMes: ['',[Validators.required,Validators.minLength(2)]],
      desdeano: ['',[Validators.required,Validators.minLength(2)]],
      hastaMes: ['',[Validators.required,Validators.minLength(2)]],
      hastaAno: ['',[Validators.required,Validators.minLength(2)]],
      id_perfilProfesional: ['']
     })

     this.formularioIdioma=this.formulario.group({
      id_idioma: [''],
      nombre: ['',[Validators.required,Validators.minLength(2)]],
      nivel: ['',[Validators.required,Validators.minLength(2)]],
      id_perfilProfesional: ['']
     })

   }

  ngOnInit(): void {

    this.registerService.BuscarCiudad().subscribe(respuesta =>{
      console.log(respuesta);
      this.Ciudad = respuesta;
    })

    this.registerService.BuscarCategoria().subscribe(respuesta =>{
      console.log(respuesta);
      this.Categoria = respuesta; 
    })

    
  
    }

    formUsuario():any{

        if (this.formularioUsuario.valid) {

          this.resultado = "Todos los datos son válidos";
          console.log(this.formularioUsuario.value);

          //Visibilidad de los Div
          this.usuario = false;
          this.informacionPersonal = true;
          this.perfilProfesional = false;
          this.formacion = false;
          this.experienciaLaboral = false;
          
          //Scroll arriba
          window.scrollTo({ top: 0, behavior: 'smooth' });
        
          // Enviar objeto a la API por POST
         this.registerService.AgregarRegistro(this.formularioUsuario.value).subscribe();

         //Traer el Id luego de guardar el usuario
         this.registerService.tblusuario().subscribe(respuesta =>{
          console.log(respuesta);
          this.USUARIO = respuesta; 

        })
        
        }else{
          this.resultado = "Hay datos inválidos en el formulario";
        };  

    }

    formInformacionPersonal():any{
      console.log(this.formularioInformacionPersonal.value)
      this.usuario = false;
      this.informacionPersonal = false;
      this.perfilProfesional = true;
      this.formacion = false;
      this.experienciaLaboral = false;
      window.scrollTo({ top: 0, behavior: 'smooth' });

      //this.registerService.AgregarRegistro(this.formularioInformacionPersonal.value).subscribe();
      ///this.ruteador.navigateByUrl('/Login');
    }
    
    formperfilProfesional():any{
      console.log(this.formularioperfilProfesional.value)
      this.usuario = false;
      this.informacionPersonal = false;
      this.perfilProfesional = false;
      this.formacion = true;
      this.experienciaLaboral = false;
      window.scrollTo({ top: 0, behavior: 'smooth' });
     // this.registerService.AgregarRegistro(this.formularioRegistroTres.value).subscribe();
      ///this.ruteador.navigateByUrl('/Login');
  }

  formFormacion():any{
    console.log(this.formularioperfilProfesional.value)
    this.usuario = false;
    this.informacionPersonal = false;
    this.perfilProfesional = false;
    this.formacion = false;
    this.experienciaLaboral = true;
    window.scrollTo({ top: 0, behavior: 'smooth' });
   // this.registerService.AgregarRegistro(this.formularioRegistroTres.value).subscribe();
    ///this.ruteador.navigateByUrl('/Login');
}

formExperienciaLaboral():any{
  console.log(this.formularioperfilProfesional.value)
  window.scrollTo({ top: 0, behavior: 'smooth' });
 // this.registerService.AgregarRegistro(this.formularioRegistroTres.value).subscribe();
  this.ruteador.navigateByUrl('/Login');
}

formIdioma():any{
  console.log("entra a idioma");
  console.log(this.formularioIdioma.value);
  this.Idioma = false;
  //window.scrollTo({ top: 0, behavior: 'smooth' });

 // this.registerService.AgregarRegistro(this.formularioRegistroTres.value).subscribe();
 // this.ruteador.navigateByUrl('/Login');
}

Inicio():any{
  console.log('Inicio');
  this.ruteador.navigateByUrl('/Beginning');
  window.scrollTo({ top: 0, behavior: 'smooth' });
}

agregarIdioma():any{
  this.Idioma = true;
  //window.scrollTo({ top: 0, behavior: 'smooth' });
}


}


let date: Date = new Date();




