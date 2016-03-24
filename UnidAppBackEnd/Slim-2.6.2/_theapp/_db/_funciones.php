<?php 
if(!defined('CONSGBL')) die ('No tiene permisos sobre este directorio'); //Bloque que confirma que se debe haber pasando primero por el enrrutador antes de acceder a la BD

/**
* clase que contiene unas cuatas fucniones bellas 
*/
class funciones 
{
	
	function consultaCriterioPorDesc(){
	try {
		$getConnection = connect();
		$query = "SELECT * FROM tbl_criterios WHERE Str_Desc_Criterio = 'ALTO'";
		$query->execute();		
		$Res = $query->fetch();
		//print_r($res);
		$getConnection = null;

	} catch (PDOException $e) {
		echo 'Error -> ' . $e->getMessage();
	}	
	return $res['Num_Id_Criterio'];
}
}
