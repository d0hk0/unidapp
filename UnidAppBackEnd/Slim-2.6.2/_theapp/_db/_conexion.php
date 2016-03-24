<?php 
if(!defined('CONSGBL')) die ('No tiene permisos sobre este directorio'); //Bloque que confirma que se debe haber pasando primero por el enrrutador antes de acceder a la BD

//Funcion encargada de organizar la conexion a la Base de Datos
function connect(){
	try {
		//Se definen los parametros del usuario y contraseña de la Base de Datos
		//$user_db = 'root'; $pass_db = '';//local
		$user_db = 'root'; $pass_db = '5gDE8hKNQB';//jelastic
		//$user_db = 'titandes_apis'; $pass_db = 'user.apis';//server
		
		$connection = new PDO('mysql:host=https://mysql8883-env-comunidapp.dal.jelastic.vps-host.net;dbname=bdunidapp', $user_db, $pass_db);//local
		//$connection = new PDO('mysql:host=localhost;dbname=titandes_apirestful01', $user_db, $pass_db);//server
		$connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

	} catch (PDOException $e) {
		echo 'Error -> ' . $e->getMessage();
	}
	return $connection;
}	