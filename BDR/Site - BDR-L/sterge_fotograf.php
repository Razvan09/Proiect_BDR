<body>
<head>
  <title>Sterge un fotograf</title>
</head>
<body bgcolor="#99AABB">

<form method="get">
  Fotograf: <input type="text" name="nume">
  <input type="submit" name="submit" value="Sterge">
</form>


<?php


include "my_connect.php";
if(isset($_GET['nume']))
{
	$nume=$_GET['nume'];
	
	$query="DELETE FROM fotografi where nume='$nume'";
	$result=mysqli_query($conexiune,$query);
	if(!$result)
	{
		die('Nu gasesc datele!'.mysql_error());
	}
	echo "Fotograful cu numele ".$nume." a fost sters din BD<br>";
}

?>

<a href="afiseaza_fotografi.php">Afiseaza fotografi</a>

</body>
</body>