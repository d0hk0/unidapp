angular.module("unidApp")
	.controller("anunciosController", function($scope, $location, s_anuncios, s_criterios){
		/*Variables*/
		$scope.vrTitAnuncios = "Creacion de Anuncios - Administracion";
		$scope.vrTitAnunciosReside = "Creacion de Anuncios - Residente";	
		$scope.arrCirterios = s_criterios.query();	
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
			s_anuncios.save({aa_titulo:$scope.aa_titulo,
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
	.controller("consultaAnunciosController", function($scope, s_anuncios){
		$scope.arrAuncios = s_anuncios.query();	
	})
