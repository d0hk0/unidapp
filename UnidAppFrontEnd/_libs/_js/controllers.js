angular.module("unidApp")
.controller("anunciosController", function($scope, $resource, $location){
	/*Variables*/
	$scope.vrTitAnuncios = "Creacion de Anuncios - Administracion";
	$scope.vrTitAnunciosReside = "Creacion de Anuncios - Residente"
	/*Funciones*/
	$scope.crearAnuncioAdmin = function(){
		/*Post = $resource("http://localhost/GitHub/unidapp/UnidAppBackEnd/Slim-2.6.2/anuncios_admin/aa_titulo",{theApp: "@theApp"});

		$scope.posts = {};
		$scope.savePost = function (){
			Post.save({data：$scope.post});
		}		

		$scope.vrAnuncioCreado = "Anuncio Creado";*/
	}
	$scope.crearAnuncioReside = function(){
		anuncios = $resource("http://localhost/GitHub/unidapp/UnidAppBackEnd/Slim-2.6.2/anunciosgen/");
		anuncios.save({aa_titulo:$scope.aa_titulo,
						aa_descripcion:$scope.aa_descripcion,
						aa_criterio:$scope.aa_criterio,
						aa_usuarioid:$scope.aa_usuarioid})
					.$promise.then(function(data){
					    // success handler					    
					    if(data.message){
					    	console.log(data.message);
					    }else{
					    	console.log('success-> '+data);
					    }
					}, function(error){
					    // error handler
					    console.log('error-> '+error);
					});
		//$scope.productos.push({'num_id_producto':$scope.id_p, 'str_nombre_producto':$scope.nombre_pr, 'num_valor_producto': $scope.valor_pr, 'num_cantidad_producto':$scope.cantidad_pr });				
		//$route.reload();
		$location.path('/#');
	}
	$scope.reset = function(){
		$scope.aa_titulo = "";
		$scope.aa_descripcion = "";
		$scope.aa_criterio = "";
		$scope.aa_usuarioid = "";
	}
})
