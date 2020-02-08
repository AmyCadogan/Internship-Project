var myApp = angular.module('myApp');

myApp.controller('DeviceController', ['$scope', '$http', '$location', '$routeParams', function($scope, $http, $location, $routeParams){
	console.log('DeviceController loaded')
	$scope.getDevices = function(){
		$http.get('/api/device').success(function()response){
			$scope.device = response;
		}
	}
}