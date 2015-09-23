<?php

require 'Slim/Slim.php';//importamos la libreria Slim

\Slim\Slim::registerAutoloader();//instansiamos registerAutoloader

$theApp = new \Slim\Slim();//Instanciamos Slim como theApp

define('CONSGBL',true); //define la constante CONSGBL para verificar que se entro a la clase enrutadora

require '_theapp/_db/_conexion.php';//Importamos la conexion a la Base de Datos
require '_theapp/_routes/_api.php';//Importamos le Api a usar


$theApp->run();//Iniciamos la App-ApiRest