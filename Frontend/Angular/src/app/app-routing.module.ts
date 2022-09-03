import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

import { ResgisterComponent } from './components/resgister/resgister.component';
import { LoginComponent } from './components/login/login.component';
import { BeginningComponent } from './components/beginning/beginning.component';
import { IndexComponent } from './components/index/index.component';

const routes: Routes = [
  {path:'',pathMatch:'full',redirectTo:'Beginning'},
  {path:'Beginning',component:BeginningComponent},
  {path:'Login',component:LoginComponent},
  {path:'Register',component:ResgisterComponent},
  {path:'Index',component:IndexComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
