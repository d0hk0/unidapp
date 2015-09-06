angular.module("mainApp")
.factory("xxxxxxResource", function($resource) {
	return $resource(
			"http://localhost/xxxxxxxxxxxxxxxxxxxx/:id_mov", 
			//"http://www.xxxxxxxxxxxxxxxxxxxxxx/:id_mov",
			{id_mov: "@id_mov"},
			{update: {method: "PUT"}}
			);
})