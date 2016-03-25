<html>
<body>
<?php 
	/*$link = mysql_connect('https://node8894-unidapp-ds.dal.jelastic.vps-host.net','root','qdZvnAKE9o'); 
	if (!$link) { 
		die('Could not connect to MySQL: ' . mysql_error()); 
	} */
	
	try {

		$link = mysql_connect('node8894-unidapp-ds.dal.jelastic.vps-host.net', 'root', 'qdZvnAKE9o');
		echo "algo";
		$selected = mysql_select_db('bdunidapp',$link);
	}
	catch (Exception $e) {
    	echo 'Excepción capturada: ',  $e->getMessage();
	} 

	echo 'Connection OK'; 
	mysql_close($link); 
?> 
</body>
</html>