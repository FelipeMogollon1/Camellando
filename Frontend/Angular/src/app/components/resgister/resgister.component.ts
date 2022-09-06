import { Component, OnInit } from '@angular/core';
import { FormGroup,FormBuilder } from '@angular/forms';
import { RegisterService } from 'src/app/services/register.service';
import { Router} from '@angular/router';

@Component({
  selector: 'app-resgister',
  templateUrl: './resgister.component.html',
  styleUrls: ['./resgister.component.css']
})



export class ResgisterComponent implements OnInit {


  Ciudad:any;
  Categoria:any;
  formularioRegistro:FormGroup;

  constructor(
    public formulario:FormBuilder,
    private registerService:RegisterService,
    private ruteador:Router

  ) {

    this.formularioRegistro=this.formulario.group({
      nombre : [''],
      apellido : [''],
      correo : [''],
      contrasena : [''],
      rol : ['1'],
      estado : ['Activo'],
      fechaRegistro : [date] 
    })

   }

  ngOnInit(): void {
   // this.registerService.BuscarCiudad().subscribe(respuesta =>{
   //   console.log(respuesta);
   //   this.Ciudad = respuesta;
   // })

 // this.registerService.BuscarCategoria().subscribe(respuesta =>{
    //  console.log(respuesta);
   //   this.Categoria = respuesta; 
 //})
  }

  enviarDatos():any{
    console.log('date');
    console.log(this.formularioRegistro.value)
    this.registerService.AgregarRegistro(this.formularioRegistro.value).subscribe();
    this.ruteador.navigateByUrl('/Login');
  }

}

let date: Date = new Date();
console.log(date);
