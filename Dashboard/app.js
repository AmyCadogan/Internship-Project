var myApp= angular.module('myApp',['ngRoute']);

myApp.config(function($routeProvider){
	$routeProvider.when('/',{
		controller:'DevicesController',
		templateUrl:'/dashtable.html'
	})
	.otherwise({
		redirectTo: '/'
	});
});