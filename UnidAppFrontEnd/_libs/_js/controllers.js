angular.module("unidApp")
.controller("anunciosController", function($scope){
	/*Variables*/
	$scope.vrTitAnuncios = "Creacion de Anuncios - Administracion";
	/*Funciones*/
	$scope.crearAnuncioAdmin = function(){
		
	}
	$scope.reset = function(){
		$scope.aa_titulo = "";
		$scope.aa_descripcion = "";
		$scope.aa_criterio = "";
	}
})
.controller("pepe", function($scope,$location){	
	$scope.pepe = function(){
		$location.path('/');
	}
	$scope.tabla = function(){
		$location.path('/');
	}
	
})