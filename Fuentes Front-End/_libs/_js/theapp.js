angular.module("unidApp", ["ngRoute","ngResource"])
.config(function($routeProvider,$locationProvider){
	$routeProvider
		
		.when("/", {
			controller: "",
			templateUrl: "_views/"
		})
		
		.otherwise("/");
		
})