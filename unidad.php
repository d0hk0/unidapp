<html>
<head>
	<title>Creacion de la unidad</title>
</head>
<body>
	<?php
	//creo la conexion
	$db = new mysqli('node8894-unidapp-ds.dal.jelastic.vps-host.net', 'root', 'qdZvnAKE9o', 'bdunidapp');



	//me conecto
	if($db->connect_errno > 0){
	    die('Unable to connect to database [' . $db->connect_error . ']');
	}
	
	//query a ejecutar
	/*$sql = "insert into tbl_unidades(str_nombre, str_direccion, num_numero_aptos, dtm_fecha_crea) values 
		('$_REQUEST[nombre]', '$_REQUEST[direccion]', $_REQUEST[noapartamentos], now())";

	//echo $sql."<br>";	
	//ejecuto el insert de la unidad
	if(!$result = $db->query($sql)){
	    die('There was an error running the query [' . $db->error . ']');
	}
	else
	{
		echo "La unidad fue creada."."<br>";

	}*/

	//Consulta de las unidades
	$query = "SELECT * FROM tbl_unidades ORDER by dtm_fecha_crea";
	$result = $db->query($query);

	echo "conecte";

	while($row = $result->fetch_array(MYSQLI_ASSOC))
	{
		$rows[] = $row;
		echo $row;
	}

	foreach($rows as $row)
	{
		printf ("Nombre: %s, Direccion: %s, Numero Aptos: %d, Fecha Creacion: %s\n <br>", 
		$row["Str_Nombre"], $row["Str_Direccion"], $row["Num_Numero_aptos"], $row["Dtm_Fecha_Crea"]);
	}

	/* free result set */
	$result->close();

	/* close connection */
	$db->close();
	
	?>
</body>
</html>