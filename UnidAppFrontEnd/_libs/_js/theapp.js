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
		.when("/anuncios_g", {
			controller: "consultaAnunciosController",
			templateUrl: "_views/formVisualizaAnuncios.html"
		})
		.when("/anuncios_a", {
			controller: "consultaAnunciosController_a",
			templateUrl: "_views/formVisualizaAnuncios_a.html"
		})
		.when("/registrarUnidad", {
			controller: "registrarUnidadController",
			templateUrl: "_views/formRegistrarUnidad.html"
		})				
		.otherwise("/");		
})