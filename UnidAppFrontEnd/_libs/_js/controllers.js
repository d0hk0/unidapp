angular.module("unidApp")
	.controller("anunciosController", function($scope, $location, s_anuncios_a, s_anuncios_g, s_criterios){
		/*Variables*/
		$scope.vrTitAnuncios = "Creacion de Anuncios - Administracion";
		$scope.vrTitAnunciosReside = "Creacion de Anuncios - Residente";
		

		/*trae los criterios*/	
		$scope.arrCirterios = s_criterios.query();	
		/*Funciones*/
		$scope.crearAnuncioAdmin = function(){
			s_anuncios_a.save({aa_titulo:$scope.aa_titulo,
							aa_descripcion:$scope.aa_descripcion,
							aa_criterio:$scope.aa_criterio,
							aa_usuarioid:$scope.aa_usuarioid,
							aa_unidadid:'1'})
						.$promise.then(function(data){
						    // success handler					    
						    if(data.message){
						    	console.log(data.message);
						    }else{
						    	console.log('success-> '+data);
						    }
						}, function(error){
						    // error handler
						    console.log('error front-> '+error);
						});		
			$location.path('/#');
		}
		$scope.crearAnuncioReside = function(){		
			s_anuncios_g.save({aa_titulo:$scope.aa_titulo,
							aa_descripcion:$scope.aa_descripcion,
							aa_criterio:$scope.aa_criterio,
							aa_usuarioid:$scope.aa_usuarioid,
							aa_unidadid:'1'})
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
			$location.path('/#');
		}
		$scope.reset = function(){
			$scope.aa_titulo = "";
			$scope.aa_descripcion = "";
			$scope.aa_criterio = "";
			$scope.aa_usuarioid = "";
		}
	})
	.controller("consultaAnunciosController", function($scope, s_anuncios_g){
		$scope.arrAuncios = s_anuncios_g.query();	
	})
	.controller("consultaAnunciosController_a", function($scope, s_anuncios_a){
		$scope.arrAuncios = s_anuncios_a.query();	
	})
	.controller("registrarUnidadController", function($scope){
		$scope.vrTitRegistroUnidad = "Registra tu unidad o conjunto residencial";	
	})
