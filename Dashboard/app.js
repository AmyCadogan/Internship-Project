var myApp= angular.module('myApp',['ngRoute']);

import { NgModule }         from '@angular/core';
import { BrowserModule }    from '@angular/platform-browser';
import { HttpClientModule } from '@angular/common/http';

@NgModule({
   myApp.config(function($routeProvider){
	$routeProvider.when('/',{
		controller:'DevicesController',
		templateUrl:'/dashtable.html'
	})
	.otherwise({
		redirectTo: '/'
	});
});.
    HttpClientModule,
  ],
  declarations: [
    AppComponent,
  ],
  bootstrap: [ AppComponent ]
})
export class AppModule {}

