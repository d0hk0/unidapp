<?php 
$link = mysql_connect('https://mysql8883-env-comunidapp.dal.jelastic.vps-host.net','root','5gDE8hKNQB'); 
if (!$link) { 
	die('Could not connect to MySQL: ' . mysql_error()); 
} 
echo 'Connection OK'; mysql_close($link); 
?> 