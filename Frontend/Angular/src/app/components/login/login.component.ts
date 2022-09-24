import { Component, OnInit } from '@angular/core';
import { Router} from '@angular/router';
import { FormGroup,FormBuilder,FormControl, Validators } from '@angular/forms';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {

  formLogin:FormGroup;

  constructor(
    public formulario:FormBuilder,
    private ruteador:Router
  ) {

    this.formLogin=this.formulario.group({
      id_usuarios: [''],
      correo : ['',[Validators.required,Validators.email]],
      contrasena : ['',[Validators.required,Validators.minLength(5)]],
    })
    
   }

  ngOnInit(): void {
  }

  enviarDatos():any{
    console.log('clickeado');
    this.ruteador.navigateByUrl('/Index');
    window.scrollTo({ top: 0, behavior: 'smooth' });
  }

  Inicio():any{
    console.log('Inicio');
    this.ruteador.navigateByUrl('/Beginning');
    window.scrollTo({ top: 0, behavior: 'smooth' });
  }


}
