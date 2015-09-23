<?php if(!defined('CONSGBL')) die ('No tiene permisos sobre este directorio'); //Bloque que confirma que se debe haber pasnado primero por el enrrutador 

$theApp->get('/', function() use($theApp){

	echo 'Slim PHP es un micro framework para el desarrollo agil de Api Rest... Enjoy';
});

/*SERVICIO PARA CREAR UN NUEVO ANUNCIO ADMINISTRADOR*/
$theApp->post('/anuncios_admin/', function() use($theApp){

	$request = $theApp->request();
	   $body = $request->getBody();
	   $input = json_decode($body); 

	$titulo	 = (string)$input->titulo_anuna;
	$descripcion = (string)$input->descripcion_anuna;
	$criterio = (string)$input->criterio_anuna;
	$usuarioid = (string)$input->usuarioid_anuna;
	
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

	} catch (PDOException $e) {
		echo 'Error -> ' . $e->getMessage();
	}
});


/*SERVICIO PARA CREAR UN NUEVO ANUNCIO ADMINISTRADOR*/
$theApp->post('/anuncios_gen/', function() use($theApp){

	$request = $theApp->request();
	   $body = $request->getBody();
	   $input = json_decode($body); 

	$titulo	 = (string)$input->titulo_anungen;
	$descripcion = (string)$input->descripcion_anungen;
	$criterio = (string)$input->criterio_anungen;
	$usuarioid = (string)$input->usuarioid_anungen;
	
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
});