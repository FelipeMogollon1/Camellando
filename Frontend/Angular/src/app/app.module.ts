import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { AppComponent } from './app.component';
import { AppRoutingModule } from './app-routing.module';


import { LoginComponent } from './components/login/login.component';
import { ResgisterComponent } from './components/resgister/resgister.component';
import { BeginningComponent } from './components/beginning/beginning.component';


@NgModule({
  declarations: [
    AppComponent,
    ResgisterComponent,
    LoginComponent,
    BeginningComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
