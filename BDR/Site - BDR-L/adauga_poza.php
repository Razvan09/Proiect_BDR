<html>
	<head>
		<title>Adauga un fotograf</title>
	</head>
<body bgcolor="#99AABB">

<?php
error_reporting(0);
$dt=$_GET['date_trimise'];
if(!isset($dt))
{
?>

<form method="get">
 Denumire_fotografie: <input type="text" name="Denumire_fotografie"><br><br>
 Rezolutie: <input type="text" name="Rezolutie"><br><br>
 Dimensiune: <input type="text" name="Dimensiune"><br><br>
 Data: <input type="text" name="Data"><br><br>
 Locatie: <input type="text" name="Locatie"><br><br>
 <input type="hidden" name="date_trimise" value="1">
 <input type="submit" name="submit" value="Adauga">
</form>
<?php 
}
else
{
	$Denumire_fotografie = $_GET['Denumire_fotografie'];
	$Denumire_fotografie=trim($Denumire_fotografie);
	$Rezolutie = $_GET['Rezolutie'];
	$Rezolutie=trim($Rezolutie);
	$Dimensiune = $_GET['Dimensiune'];
	$Dimensiune=trim($Dimensiune);
	$Data = $_GET['Data'];
	$Data=trim($Data);	
	$Locatie = $_GET['Locatie'];
	$Locatie=trim($Locatie);
	echo "<h2> Ati introdus:</h2>";
    echo "$Denumire_fotografie <br>"."$Rezolutie <br>"."$Dimensiune <br>"."$Data <br>"."$Locatie <br>";
	include "my_connect.php";
	
	$query="INSERT INTO `expert_photography`.`fotografii` ( `Denumire_fotografie`, `Rezolutie`, `Dimensiune`, `Data`, `Locatie`) 
	VALUES ('$Denumire_fotografie','$Rezolutie','$Dimensiune','$Data','$Locatie')";
	$result=mysqli_query($conexiune,$query);
	if($result)
	{
		echo "Datele au fost adaugate in baza de date";
	}
}
?>

</body>
</html>