import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppComponent } from './app.component';
import { AppRoutingModule } from './app-routing.module';
import {HttpClientModule} from '@angular/common/http';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';

import { LoginComponent } from './components/login/login.component';
import { ResgisterComponent } from './components/resgister-personas/resgister-personas.component';
import { BeginningComponent } from './components/beginning/beginning.component';
import { IndexComponent } from './components/index/index.component';
import { RegisterEmpresaComponent } from './components/register-empresa/register-empresa.component';


@NgModule({
  declarations: [
    AppComponent,
    ResgisterComponent,
    LoginComponent,
    BeginningComponent,
    IndexComponent,
    RegisterEmpresaComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    FormsModule, 
    ReactiveFormsModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
