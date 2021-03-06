<?php if(!defined('CONSGBL')) die ('No tiene permisos sobre este directorio'); //Bloque que confirma que se debe haber pasnado primero por el enrrutador 
$theApp->get('/', function() use($theApp){
	echo 'Slim PHP es un micro framework para el desarrollo agil de Api Rest... Enjoy';
});
//--------------------------------------------------------------------------------------------------------------
// CRUD PARA LOS ANUNCIOS QUE PUBLICA EL ADMINISTRADOR
//--------------------------------------------------------------------------------------------------------------
//C: SERVICIO PARA CREAR UN NUEVO ANUNCIO ADMINISTRADOR
//$theApp->post('/anunciosadmin/:titulo/:descripcion/:criterio/:usuarioid', function($titulo, $descripcion, $criterio, $usuarioid) use($theApp){
$theApp->post('/anunciosadmin', function() use($theApp){
	
	$request = $theApp->request();
	$body = $request->getBody();
	$input = json_decode($body); 
	
	$titulo = (string)$input->aa_titulo;
	$descripcion = (string)$input->aa_descripcion;
	$criterio = (int)$input->aa_criterio;
	$usuarioid = (int)$input->aa_usuarioid;
	$unidadid = (int)$input->aa_unidadid;

	try {
		$getConnection = connect();
		$query = $getConnection->prepare('INSERT INTO tbl_anuncios_admin VALUES (null,?,?,?,?,now(),?)');
		$query->bindParam(1, $titulo);
		$query->bindParam(2, $descripcion);
		$query->bindParam(3, $criterio);
		$query->bindParam(4, $usuarioid);
		$query->bindParam(5, $unidadid);
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
//R: SERVICIO PARA CONSULTAR TODOS LOS ANUNCIOS DE ADMINISTRACION
$theApp->get('/anunciosadmin/', function() use($theApp){
	try {
		$getConnection = connect();
		$query = $getConnection->query('Select * from tbl_anuncios_admin');
		$getConnection =  null;
		$theApp->response->headers->set('Content-type', 'application/json');
		$theApp->response->status(200);
		$datosRes = $query->fetchall();
		$theApp->response->body(json_encode($datosRes));
	} catch (PDOException $e) {
		echo 'Error -> ' . $e->getMessage();
	}
});
//U: SERVICIO PARA ACTUALIZAR UN ANUNCIO ADMINISTRACION
$theApp->put('/anunciosadmin/:id/:titulo/:descripcion/:criterio', function($id, $titulo, $descripcion, $criterio) use($theApp){
	try {
		$getConnection = connect();
		$query = $getConnection->prepare('UPDATE tbl_anuncios_admin SET Str_Tit_Anun=?,Str_Desc_Admin=?,FK_Num_Id_Criterio=?,Dtm_Fecha_Crea=now() WHERE Num_Id_Anun_Admin=?');
		$query->bindParam(1, $titulo);
		$query->bindParam(2, $descripcion);
		$query->bindParam(3, $criterio);
		$query->bindParam(4, $id);
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
//D: SERVICIO PARA ELIMINAR UN ANUNCIO ADMINISTRACION
$theApp->delete('/anunciosadmin/:id', function($id) use($theApp){
	try {
		$getConnection = connect();
		$query = $getConnection->query('DELETE FROM tbl_anuncios_admin WHERE Num_Id_Anun_Admin ='. $id);
		$getConnection =  null;	
		$theApp->response->body('Registro elmininado de anuncios administrativos '.$id);
	} catch (PDOException $e) {
		echo 'Error -> ' . $e->getMessage();
	}
});
//--------------------------------------------------------------------------------------------------------------
// CRUD PARA LOS ANUNCIOS QUE PUBLICA EL ADMINISTRADOR
//--------------------------------------------------------------------------------------------------------------
//C: SERVICIO PARA CREAR UN NUEVO ANUNCIO GENERALES
$theApp->post('/anunciosgen', function() use($theApp){
		
	$request = $theApp->request();
	$body = $request->getBody();
	$input = json_decode($body); 
	
	$titulo = (string)$input->aa_titulo;
	$descripcion = (string)$input->aa_descripcion;
	$criterio = (int)$input->aa_criterio;
	$usuarioid = (int)$input->aa_usuarioid;
	$unidadid = (int)$input->aa_unidadid;
	//consulto el criterio	
	//$misFun = new funciones();
	//$misFun->consultaCriterioPorDesc();
	try {
		$getConnection = connect();
		$query = $getConnection->prepare('INSERT INTO tbl_anuncios_gen VALUES (null,?,?,now(),?,?,?)');
		$query->bindParam(1, $titulo);
		$query->bindParam(2, $descripcion);
		$query->bindParam(3, $criterio);
		$query->bindParam(4, $usuarioid);
		$query->bindParam(5, $unidadid);
		$query->execute();
		$prdId = $getConnection->lastInsertId();
		$getConnection =  null;
		$theApp->response->headers->set('Content-type', 'application/json');
		$theApp->response->status(200);
		$datosRes = array('message'=>'Se creo el anuncio con el id -> '.$prdId);
		$theApp->response->body(json_encode($datosRes));
	
	} catch (PDOException $e) {
		echo 'Error back-> ' . $e->getMessage();
	}
});
//R: SERVICIO PARA CONSULTAR UN NUEVO ANUNCIO GENERALES
$theApp->get('/anunciosgen/', function() use($theApp){
	try {
		$getConnection = connect();
		$query = $getConnection->query('Select * from tbl_anuncios_gen order by 1 desc');
		$getConnection =  null;
		$theApp->response->headers->set('Content-type', 'application/json');
		$theApp->response->status(200);
		$datosRes = $query->fetchall();
		$theApp->response->body(json_encode($datosRes));
	} catch (PDOException $e) {
		echo 'Error -> ' . $e->getMessage();
	}
});
//U: SERVICIO PARA ACTUALIZAR UN ANUNCIO GENERAL
$theApp->put('/anunciosgen/:id/:titulo/:descripcion/:criterio', function($id, $titulo, $descripcion, $criterio) use($theApp){
	try {
		$getConnection = connect();
		
		$query = $getConnection->prepare('UPDATE tbl_anuncios_gen SET Str_Tit_Anun=?,Str_Desc_Admin=?,FK_Num_Id_Criterio=?,Dtm_Fecha_Crea=now() WHERE Num_Id_Anun_Gen=?');
		$query->bindParam(1, $titulo);
		$query->bindParam(2, $descripcion);
		$query->bindParam(3, $criterio);
		$query->bindParam(4, $id);
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
//D: SERVICIO PARA ELIMINAR UN ANUNCIO GENERAL
$theApp->delete('/anunciosgen/:id', function($id) use($theApp){
	try {
		$getConnection = connect();
		$query = $getConnection->query('DELETE FROM tbl_anuncios_gen WHERE Num_Id_Anun_Gen='. $id);
		$getConnection =  null;
		$theApp->response->body('Registro elmininado de anuncios generales '.$id);
	} catch (PDOException $e) {
		echo 'Error -> ' . $e->getMessage();
	}
});
//--------------------------------------------------------------------------------------------------------------
// CRUD PARA LAS UNIDADES
//--------------------------------------------------------------------------------------------------------------
//C: SERVICIO PARA CREAR UNA NUEVA UNIDAD
$theApp->post('/unidad/:nombre/:direccion/:numeroaptos', function($nombre, $direccion, $numeroaptos) use($theApp){
	try {
		$getConnection = connect();
		$query = $getConnection->prepare('INSERT INTO tbl_unidades VALUES (null,?,?,?,now())');
		$query->bindParam(1, $nombre);
		$query->bindParam(2, $direccion);
		$query->bindParam(3, $numeroaptos);
		$query->execute();
		$prdId = $getConnection->lastInsertId();
		$getConnection =  null;
		$theApp->response->headers->set('Content-type', 'application/json');
		$theApp->response->status(200);
		$datosRes = array('message'=>$prdId);
		$theApp->response->body(json_encode($datosRes));
		echo "se creo la unidad: ".$nombre." con direccion: ".$direccion;
	} catch (PDOException $e) {
		echo 'Error -> ' . $e->getMessage();
	}
});
//R: SERVICIO PARA CONSULTAR TODAS LAS UNIDADES
$theApp->get('/unidad/', function() use($theApp){
	try {
		$getConnection = connect();
		$query = $getConnection->query('Select * from tbl_unidades');
		$getConnection =  null;
		$theApp->response->headers->set('Content-type', 'application/json');
		$theApp->response->status(200);
		$datosRes = $query->fetchall();
		$theApp->response->body(json_encode($datosRes));
	} catch (PDOException $e) {
		echo 'Error -> ' . $e->getMessage();
	}
});
//U: SERVICIO PARA ACTUALIZAR UNA UNIDAD
$theApp->put('/unidad/:id/:nombre/:direccion/:numeroaptos', function($id, $nombre, $direccion, $numeroaptos) use($theApp){
	try {
		$getConnection = connect();
		$query = $getConnection->prepare('UPDATE tbl_unidades SET Str_Nombre=?,Str_Direccion=?,Num_Numero_aptos=?,Dtm_Fecha_Crea=now() WHERE Num_Id_Unidad=?');
		$query->bindParam(1, $nombre);
		$query->bindParam(2, $direccion);
		$query->bindParam(3, $numeroaptos);
		$query->bindParam(4, $id);
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
//D: SERVICIO PARA ELIMINAR UNA UNIDAD
$theApp->delete('/unidad/:id', function($id) use($theApp){
	try {
		$getConnection = connect();
		$query = $getConnection->query('DELETE FROM tbl_unidades WHERE Num_Id_Unidad ='. $id);
		$getConnection =  null;	
		$theApp->response->body('Registro elmininado de unidades '.$id);
	} catch (PDOException $e) {
		echo 'Error -> ' . $e->getMessage();
	}
});
//--------------------------------------------------------------------------------------------------------------
// CRUD PARA LOS CRITERIOS
//--------------------------------------------------------------------------------------------------------------
//C: SERVICIO PARA CREAR UN NUEVO CRITERIO
$theApp->post('/criterio/:descripcion', function($descripcion) use($theApp){
	try {
		$getConnection = connect();
		$query = $getConnection->prepare('INSERT INTO tbl_criterios VALUES (null,?,now())');
		$query->bindParam(1, $descripcion);
		$query->execute();
		$prdId = $getConnection->lastInsertId();
		$getConnection =  null;
		$theApp->response->headers->set('Content-type', 'application/json');
		$theApp->response->status(200);
		$datosRes = array('message'=>$prdId);
		$theApp->response->body(json_encode($datosRes));
		echo "se creo el criterio: ".$descripcion;
	} catch (PDOException $e) {
		echo 'Error -> ' . $e->getMessage();
	}
});
//R: SERVICIO PARA CONSULTAR TODOS LOS CRITERIOS
$theApp->get('/criterio/', function() use($theApp){
	try {
		$getConnection = connect();
		$query = $getConnection->query('Select * from tbl_criterios');
		$getConnection =  null;
		$theApp->response->headers->set('Content-type', 'application/json');
		$theApp->response->status(200);
		$datosRes = $query->fetchall();
		$theApp->response->body(json_encode($datosRes));
	} catch (PDOException $e) {
		echo 'Error -> ' . $e->getMessage();
	}
});
//U: SERVICIO PARA ACTUALIZAR UN CRITERIO
$theApp->put('/criterio/:id/:descripcion', function($id, $descripcion) use($theApp){
	try {
		$getConnection = connect();
		$query = $getConnection->prepare('UPDATE tbl_criterios SET Str_Desc_Criterio=?,Dtm_Fecha_Crea=now() WHERE Num_Id_Criterio=?');
		$query->bindParam(1, $descripcion);
		$query->bindParam(2, $id);
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
//D: SERVICIO PARA ELIMINAR UNA UNIDAD
$theApp->delete('/criterio/:id', function($id) use($theApp){
	try {
		$getConnection = connect();
		$query = $getConnection->query('DELETE FROM tbl_criterios WHERE Num_Id_Criterio ='. $id);
		$getConnection =  null;	
		$theApp->response->body('Registro elmininado de criterios '.$id);
	} catch (PDOException $e) {
		echo 'Error -> ' . $e->getMessage();
	}
});