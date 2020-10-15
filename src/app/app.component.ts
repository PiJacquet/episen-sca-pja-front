import { Component } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { FrontService } from './services/frontService';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'episen-sca-pja-front';
  text:string;

  constructor(private router:Router,private activatedRoute:ActivatedRoute, private frontService:FrontService){
    
  }

  sendText() :void{
    this.frontService.sendText(this.text);
  }


}
