import { Component, OnInit } from '@angular/core';
import { Router} from '@angular/router';

@Component({
  selector: 'app-index',
  templateUrl: './index.component.html',
  styleUrls: ['./index.component.css']
})
export class IndexComponent implements OnInit {

  constructor(
    private ruteador:Router
  ) { }

  ngOnInit(): void {    
  }

  enviarDatos():any{
    console.log('clickeado');
    this.ruteador.navigateByUrl('/Index');
  }
}
