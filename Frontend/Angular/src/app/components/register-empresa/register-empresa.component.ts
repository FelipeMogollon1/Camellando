import { Component, OnInit } from '@angular/core';
import { FormGroup,FormBuilder } from '@angular/forms';
import { RegisterService } from 'src/app/services/register.service';
import { Router} from '@angular/router';

@Component({
  selector: 'app-register-empresa',
  templateUrl: './register-empresa.component.html',
  styleUrls: ['./register-empresa.component.css']
})
export class RegisterEmpresaComponent implements OnInit {

  constructor() { }

  ngOnInit(): void {
  }

  

}
