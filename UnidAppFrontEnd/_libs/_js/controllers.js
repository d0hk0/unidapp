angular.module("unidApp")
.controller("anunciosController", function($scope, $resource){
	/*Variables*/
	$scope.vrTitAnuncios = "Creacion de Anuncios - Administracion";
	/*Funciones*/
	$scope.crearAnuncioAdmin = function(){
		/*Post = $resource("http://localhost/GitHub/unidapp/UnidAppBackEnd/Slim-2.6.2/anuncios_admin/aa_titulo",{theApp: "@theApp"});

		$scope.posts = {};
		$scope.savePost = function (){
			Post.save({data：$scope.post});
		}		

		$scope.vrAnuncioCreado = "Anuncio Creado";*/
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