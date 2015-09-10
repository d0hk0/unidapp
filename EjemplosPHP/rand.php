<html>
<head></head>
<body> 
<?php
  $numrand=rand(1,100);
  echo $numrand;
  echo "<br>";
  if ($numrand<=50)
  {
    echo "menor a 50";
  }
  else
  {
    echo "mayor a 50";
  }
  ?>
</body>
</html>