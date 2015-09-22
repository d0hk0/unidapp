<?php if(!defined('CONSGBL')) die ('No tiene permisos sobre este directorio'); //Bloque que confirma que se debe haber pasnado primero por el enrrutador 

/*SERVICIO PARA xxxxxxxxxxxxxxx */
$theApp->get('/', function() use($theApp){
	echo 'Slim PHP es un micro framework para el desarrollo agil de Api Rest... Enjoy';
});