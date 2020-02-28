var myApp= angular.module('myApp',['ngRoute']);

import { NgModule }         from '@angular/core';
import { BrowserModule }    from '@angular/platform-browser';
import { HttpClientModule } from '@angular/common/http';

@NgModule({
   myApp.config(function($routeProvider){
	$routeProvider.when('/',{
		controller:'DevicesController',
		templateUrl:'table.html'
	})
	.otherwise({
		redirectTo: '/'
	});
});
myApp.controller('DeviceController', function($scope, $http, $location, $routeParams){
	console.log('DeviceController loaded')
	$scope.getDevices = function(){
		var device = null;
		$http.get('/api/devices').success(function(data) {
			device = data;
		});
	}
}
