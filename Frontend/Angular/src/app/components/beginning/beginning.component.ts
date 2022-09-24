import { Component, OnInit } from '@angular/core';
import { Router} from '@angular/router';
import { FormGroup,FormBuilder,FormControl, Validators } from '@angular/forms';
import * as $ from 'jquery';

@Component({
  selector: 'app-beginning',
  templateUrl: './beginning.component.html',
  styleUrls: ['./beginning.component.css']
})
export class BeginningComponent implements OnInit {

  buttonTop = true;  
 
  constructor(
    private ruteador:Router,
    public formulario:FormBuilder
  ) { }

  ngOnInit(): void {
    window.scrollTo({ top: 0, behavior: 'smooth' });


  }

  moverseA(idDelElemento: string) {
    location.hash = "#" + idDelElemento;
  }



  bTop():any{
    window.scrollTo({ top: 0, behavior: 'smooth' });

  if ( document.body.scrollTop > 20 ||  document.documentElement.scrollTop > 20) {
    this.buttonTop = true;
  } else {
    this.buttonTop = false;
  };
}



  Empleo():any{
    console.log('clickeado Empleo');
    this.ruteador.navigateByUrl('/Register');
    window.scrollTo({ top: 0, behavior: 'smooth' });
  }
  Candidatos():any{
    console.log('clickeado Candidatos');
    this.ruteador.navigateByUrl('/RegisterEmpresa');
    window.scrollTo({ top: 0, behavior: 'smooth' });
  }

  InicioSesion():any{
    console.log('clickeado Inicio de Sesion');
    this.ruteador.navigateByUrl('/Login');
    window.scrollTo({ top: 0, behavior: 'smooth' });
  }

  
}
