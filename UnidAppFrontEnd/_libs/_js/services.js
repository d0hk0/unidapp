angular.module("unidApp")
.factory("xxxxxxResource", function($resource) {
	return $resource(
			"http://localhost/xxxxxxxxxxxxxxxxxxxx/:id_mov", 
			{id_mov: "@id_mov"},
			{update: {method: "PUT"}}
			);
})
.factory("s_anuncios", function($resource){
	return $resource("http://localhost/GitHub/unidapp/UnidAppBackEnd/Slim-2.6.2/anunciosgen/", {update: {method: "PUT"}});
})
.factory("s_criterios", function($resource){
	return $resource("http://localhost/GitHub/unidapp/UnidAppBackEnd/Slim-2.6.2/criterio/", {update: {method: "PUT"}});
})