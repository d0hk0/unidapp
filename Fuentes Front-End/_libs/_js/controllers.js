angular.module("unidApp")
.controller("mainController", function($scope){
	
})
.controller("pepe", function($scope,$location){	
	$scope.pepe = function(){
		$location.path('/');
	}
	$scope.tabla = function(){
		$location.path('/');
	}
	
})
