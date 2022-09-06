import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import {tbl_usuarios} from './register';

@Injectable({
  providedIn: 'root'
})

export class RegisterService {

  API:string="http://localhost:81/Camellando/Backend/Api/Registro.php";
  UBICACION:string="http://localhost:81/Camellando/Backend/Api/Registro.php";
  CATEGORIA:string="http://localhost:81/Camellando/Backend/Api/Categoria.php";
  LOGIN:string="http://localhost:81/Camellando/Backend/Api/login.php"

  constructor(private clientHttp:HttpClient) { }

  //Metodo para Agregar nuevo Registro
  AgregarRegistro(datosRegistro:tbl_usuarios):Observable<any>{
    return this.clientHttp.post(this.API+"?insertar=1",datosRegistro);
  }

  //Metodo para Buscar las ciudades
  BuscarCiudad(){
    return this.clientHttp.get(this.UBICACION); 
  }

  //Metodo para Buscar las Categorias
  BuscarCategoria(){
    return this.clientHttp.get(this.CATEGORIA); 
  }

  //Metodo para Buscar login
  login(){
    return this.clientHttp.get(this.LOGIN); 
  }

}