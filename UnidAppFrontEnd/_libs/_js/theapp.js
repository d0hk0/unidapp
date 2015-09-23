angular.module("unidApp", ["ngRoute","ngResource"])
.config(function($routeProvider){
	$routeProvider		
		.when("/crearAnuncioAdmin", {
			controller: "anunciosController",
			templateUrl: "_views/formCreaAnuncioAdmin.html"
		})		
		.otherwise("/");		
})