<body>
<head>
  <title>Editeaza un fotograf</title>
</head>
<body bgcolor="#99AABB">
<?php
require_once("my_connect.php");
$ID_fotografie=$_GET['ID_fotografie'];
$actualizare=$_GET['actualizare'];
if($actualizare==1)
{
	$ID_fotografie=$_POST['ID_fotografiem'];
	$Denumire_fotografie=$_POST['Denumire_fotografiem'];
	$Rezolutie=$_POST['Rezolutiem'];
	$Dimensiune=$_POST['Dimensiunem'];
	$Data=$_POST['Datam'];
	$Locatie=$_POST['Locatiem'];
	
	$query="UPDATE fotografi SET Denumire_fotografie='$Denumire_fotografie', Rezolutie='$Rezolutie', 
	Dimensiune='$Dimensiune', Data='$Data', Locatie='$Locatie' where ID_fotografie='$ID_fotografie'";
	$result=mysqli_query($conexiune,$query);
	echo "S-au actualizat datele!<br><br><br>";
	
	echo "
		<form method='post' action='editeaza_fotograf.php?actualizare=1&ID_fotografie=$ID_fotografie'>
			ID_fotografie:  <input type='text' name='ID_fotografiem' value='$ID_fotografie'><br><br>
			Denumire_fotografie:  <input type='text' name='Denumire_fotografiem' value='$Denumire_fotografie'><br><br>
			Rezolutie: <input type='text' name='Rezolutiem' value='$Rezolutie'><br><br>
			Dimensiune:     <input type='text' name='Dimensiunem' value='$Dimensiune'><br><br>
			Data:     <input type='text' name='Datam' value='$Data'><br><br>
			Locatie:  <input type='text' name='Locatiem' value='$Locatie'><br><br>
			<input type='submit' name='modifica' value='Modifica'>
		</form>";
	
	echo "<br><br><br><a href='afiseaza_poze.php'>Editare</a>";
}
else
{

$query="SELECT * FROM fotografii WHERE ID_fotografie='$ID_fotografie'";
$result=mysqli_query($conexiune,$query);
$row=mysqli_fetch_array($result,MYSQL_ASSOC);
$ID_fotografie=$row['ID_fotografie'];
$Denumire_fotografie=$row['Denumire_fotografie'];
$Rezolutie=$row['Rezolutie'];
$Dimensiune=$row['Dimensiune'];
$Data=$row['Data'];
$Locatie=$row['Locatie'];

echo "
		<form method='post' action='editeaza_fotograf.php?actualizare=1&ID_fotografie=$ID_fotografie'>
			ID_fotografie:  <input type='text' name='ID_fotografiem' value='$ID_fotografie'><br><br>
			Denumire_fotografie:  <input type='text' name='Denumire_fotografiem' value='$Denumire_fotografie'><br><br>
			Rezolutie: <input type='text' name='Rezolutiem' value='$Rezolutie'><br><br>
			Dimensiune:     <input type='text' name='Dimensiunem' value='$Dimensiune'><br><br>
			Data:     <input type='text' name='Datam' value='$Data'><br><br>
			Locatie:     <input type='text' name='Locatiem' value='$Locatie'><br><br>
			<input type='submit' name='modifica' value='Modifica'>
		</form>";
}		
?>

<a href="adauga_poza.php" class="btn sonar-btn black-btn">Adauga fotografie</a>
<a href="sterge_poza.php" class="btn sonar-btn black-btn">Sterge fotografie</a>

</body>
</html>