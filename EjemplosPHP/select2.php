<html>
<head>
<title>Problema</title>
</head>
<body>

<?php
if ($_REQUEST['operacion']=="suma")
{
  $suma=$_REQUEST['valor1'] + $_REQUEST['valor2'];
   echo "La suma es:".$suma;
}
else
{
  if ($_REQUEST['operacion']=="resta")
  {
    $resta=$_REQUEST['valor1'] - $_REQUEST['valor2'];
    echo "La resta es:".$resta;
  }
}

?>

</body>
</html>