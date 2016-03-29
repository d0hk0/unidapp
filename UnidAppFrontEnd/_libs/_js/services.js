angular.module("unidApp")
.factory("xxxxxxResource", function($resource) {
	return $resource(
			"http://localhost/xxxxxxxxxxxxxxxxxxxx/:id_mov", 
			{id_mov: "@id_mov"},
			{update: {method: "PUT"}}
			);
})
.factory("s_anuncios_g", function($resource){
	//return $resource("http://localhost/GitHub/unidapp/UnidAppBackEnd/Slim-2.6.2/anunciosgen/", {update: {method: "PUT"}});
	return $resource("http://unidapp-ds.dal.jelastic.vps-host.net/UnidAppBackEnd/Slim-2.6.2/anunciosgen/", {update: {method: "PUT"}});
})
.factory("s_criterios", function($resource){
	//return $resource("http://localhost/GitHub/unidapp/UnidAppBackEnd/Slim-2.6.2/criterio/", {update: {method: "PUT"}});
	return $resource("http://unidapp-ds.dal.jelastic.vps-host.net/UnidAppBackEnd/Slim-2.6.2/criterio", {update: {method: "PUT"}});
})
.factory("s_anuncios_a", function($resource){
	//return $resource("http://localhost/GitHub/unidapp/UnidAppBackEnd/Slim-2.6.2/anunciosadmin/", {update: {method: "PUT"}});
	return $resource("http://unidapp-ds.dal.jelastic.vps-host.net/UnidAppBackEnd/Slim-2.6.2/anunciosadmin/", {update: {method: "PUT"}});
})
