angular.module("unidApp", ["ngRoute","ngResource"])
.config(function($routeProvider){
	$routeProvider		
		.when("/crearAnuncioAdmin", {
			controller: "anunciosController",
			templateUrl: "_views/formCreaAnuncioAdmin.html"
		})		
		.when("/crearAnuncioReside", {
			controller: "anunciosController",
			templateUrl: "_views/formCreaAnuncioReside.html"
		})
		.when("/anuncios", {
			controller: "consultaAnunciosController",
			templateUrl: "_views/formVisualizaAnuncios.html"
		})		
		.otherwise("/");		
})