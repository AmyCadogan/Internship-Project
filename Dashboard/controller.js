var myApp = angular.module('myApp');

myApp.controller('DeviceController', ['$scope', '$http', '$location', '$routeParams', function($scope, $http, $location, $routeParams){
	console.log('DeviceController loaded...');

	$scope.getDevices = function(){
		$http.get('/api/devices').success(function(response){
			$scope.devices = response;
		});
	}

	$scope.getDevice = function(){
		var id = $routeParams.id;
		$http.get('/api/devices/'+id).success(function(response){
			$scope.device = response;
		});
	}
}]);
