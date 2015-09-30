<?php if(!defined('CONSGBL')) die ('No tiene permisos sobre este directorio'); //Bloque que confirma que se debe haber pasnado primero por el enrrutador 

$theApp->get('/', function() use($theApp){

	echo 'Slim PHP es un micro framework para el desarrollo agil de Api Rest... Enjoy';
});

/*SERVICIO PARA CREAR UN NUEVO ANUNCIO ADMINISTRADOR*/
$theApp->get('/anunciosadmin/:titulo/:descripcion/:criterio/:usuarioid', function($titulo, $descripcion, $criterio, $usuarioid) use($theApp){
	
	/*$request = $theApp->request();
	   $body = $request->getBody();
	   $input = json_decode($body); 

	$titulo	 = (string)$input->aa_titulo;
	$descripcion = (string)$input->aa_descripcion;
	$criterio = (string)$input->aa_criterio;
	$usuarioid = (string)$input->aa_usuarioid;

	*/
	try {
		$getConnection = connect();

		$query = $getConnection->prepare('INSERT INTO tbl_anuncios_admin VALUES (null,?,?,?,?,now())');
		$query->bindParam(1, $titulo);
		$query->bindParam(2, $descripcion);
		$query->bindParam(3, $criterio);
		$query->bindParam(4, $usuarioid);
		$query->execute();
		$prdId = $getConnection->lastInsertId();
		$getConnection =  null;

		$theApp->response->headers->set('Content-type', 'application/json');
		$theApp->response->status(200);

		$datosRes = array('message'=>$prdId);
		$theApp->response->body(json_encode($datosRes));

		echo "se creo el anuncio: ".$titulo." con descripacion: ".$descripcion."(".$criterio.$usuarioid.")";

	} catch (PDOException $e) {
		echo 'Error -> ' . $e->getMessage();
	}
});


//SERVICIO PARA CREAR UN NUEVO ANUNCIO ADMINISTRADOR
$theApp->get('/anunciosadmin/:titulo/:descripcion/:criterio/:usuarioid', function($titulo, $descripcion, $criterio, $usuarioid) use($theApp){
	
	/*$request = $theApp->request();
	   $body = $request->getBody();
	   $input = json_decode($body); 

	$titulo	 = (string)$input->aa_titulo;
	$descripcion = (string)$input->aa_descripcion;
	$criterio = (string)$input->aa_criterio;
	$usuarioid = (string)$input->aa_usuarioid;

	*/
	try {
		$getConnection = connect();

		$query = $getConnection->prepare('INSERT INTO tbl_anuncios_gen VALUES (null,?,?,now(),?,?)');
		$query->bindParam(1, $titulo);
		$query->bindParam(2, $descripcion);
		$query->bindParam(3, $criterio);
		$query->bindParam(4, $usuarioid);
		$query->execute();
		$prdId = $getConnection->lastInsertId();
		$getConnection =  null;

		$theApp->response->headers->set('Content-type', 'application/json');
		$theApp->response->status(200);

		$datosRes = array('message'=>$prdId);
		$theApp->response->body(json_encode($datosRes));

	} catch (PDOException $e) {
		echo 'Error -> ' . $e->getMessage();
	}
});*/