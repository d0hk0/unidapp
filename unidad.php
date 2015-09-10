<html>
<head>
	<title>Problema</title>
</head>
<body>
	<?php
	$db = new mysqli('localhost', 'root', '', 'bdunidapp');

	if($db->connect_errno > 0){
	    die('Unable to connect to database [' . $db->connect_error . ']');
	}
	
	
	$sql = "SQL insert into tbl_unidades(str_nombre,str_direccion,num_numero_aptos) values 
		('$_REQUEST[nombre]','$_REQUEST[direccion]',$_REQUEST[noapartamentos])";

	echo $sql;
	

	if(!$result = $db->query($sql)){
	    die('There was an error running the query [' . $db->error . ']');
	}
	else
	{
		echo "La unidad fue creada.";
	}
	$mysqli->close();
	
	?>
</body>
</html>