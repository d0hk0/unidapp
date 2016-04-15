angular.module("unidApp")
.factory("xxxxxxResource", function($resource) {
	return $resource(
			"http://localhost/xxxxxxxxxxxxxxxxxxxx/:id_mov", 
			{id_mov: "@id_mov"},
			{update: {method: "PUT"}}
			);
})
.factory("s_anuncios_g", function($resource){
	
	var loc = window.location;
    var pathName = loc.pathname.substring(0, loc.pathname.lastIndexOf('/') + 1);
    var rutaabsoluta = loc.href.substring(0, loc.href.length - ((loc.pathname + loc.search + loc.hash).length - pathName.length));

    var URLdomain = window.location.host;

    if (URLdomain = "localhost") {
    	return $resource("http://localhost/GitHub/unidapp/UnidAppBackEnd/Slim-2.6.2/anunciosgen/", {update: {method: "PUT"}});
    }
    else {
    	return $resource("http://unidapp-ds.dal.jelastic.vps-host.net/UnidAppBackEnd/Slim-2.6.2/anunciosgen/", {update: {method: "PUT"}});
    };
})
.factory("s_criterios", function($resource){
<<<<<<< HEAD
	var URLdomain = window.location.host;
	
=======
>>>>>>> Desarrollo
	if (URLdomain = "localhost") {
    	return $resource("http://localhost/GitHub/unidapp/UnidAppBackEnd/Slim-2.6.2/criterio/", {update: {method: "PUT"}});
    }
    else {
    	return $resource("http://unidapp-ds.dal.jelastic.vps-host.net/UnidAppBackEnd/Slim-2.6.2/criterio", {update: {method: "PUT"}});
    };
	
})
.factory("s_anuncios_a", function($resource){
	var URLdomain = window.location.host;
    
    if (URLdomain = "localhost") {
        return $resource("http://localhost/GitHub/unidapp/UnidAppBackEnd/Slim-2.6.2/anunciosadmin/", {update: {method: "PUT"}});
    }
    else {
        return $resource("http://unidapp-ds.dal.jelastic.vps-host.net/UnidAppBackEnd/Slim-2.6.2/anunciosadmin/", {update: {method: "PUT"}});
    };
})
.factory("s_unidades", function($resource){
    var URLdomain = window.location.host;
    
    if (URLdomain = "localhost") {
        return $resource("http://localhost/GitHub/unidapp/UnidAppBackEnd/Slim-2.6.2/unidad/", {update: {method: "PUT"}});
    }
    else {
        return $resource("http://unidapp-ds.dal.jelastic.vps-host.net/UnidAppBackEnd/Slim-2.6.2/unidad/", {update: {method: "PUT"}});
    };
})

