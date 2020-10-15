import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

@Injectable({
    providedIn:'root'
})

export class FrontService{
    
    constructor(private http:HttpClient){

    }

    sendText(text:String) :void{
        console.log("FrontService");
        this.http.post('http://localhost:8080/add/order', text)
       .subscribe(function(data) {
               console.log(data);
       });
      }

}