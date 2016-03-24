<html>
<?php 
	/*$link = mysql_connect('https://node8894-unidapp-ds.dal.jelastic.vps-host.net','root','qdZvnAKE9o'); 
	if (!$link) { 
		die('Could not connect to MySQL: ' . mysql_error()); 
	} */

	$link = mysql_connect('node8894-unidapp-ds.dal.jelastic.vps-host.net', 'root', 'qdZvnAKE9o');
	$selected = mysql_select_db('bdunidapp',$link);

	echo 'Connection OK'; mysql_close($link); 
?> 
</html>