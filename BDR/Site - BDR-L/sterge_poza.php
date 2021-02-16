<body>
<head>
  <title>Sterge un fotograf</title>
</head>
<body bgcolor="#99AABB">

<form method="get">
  Fotograf: <input type="text" name="Denumire_fotografie">
  <input type="submit" name="submit" value="Sterge">
</form>


<?php


include "my_connect.php";
if(isset($_GET['Denumire_fotografie']))
{
	$Denumire_fotografie=$_GET['Denumire_fotografie'];
	
	$query="DELETE FROM fotografii where Denumire_fotografie='$Denumire_fotografie'";
	$result=mysqli_query($conexiune,$query);
	if(!$result)
	{
		die('Nu gasesc datele!'.mysql_error());
	}
	echo "Fotografia cu Denumire_fotografie ".$Denumire_fotografie." a fost stearsa din BD<br>";
}

?>

<a href="afiseaza_poze.php">Afiseaza fotografii</a>

</body>
</body>