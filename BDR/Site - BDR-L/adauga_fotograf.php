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
 Prenume: <input type="text" name="prenume"><br><br>
 Nume: <input type="text" name="nume"><br><br>
 Experienta: <input type="text" name="experienta"><br><br>
 Telefon: <input type="text" name="telefon"><br><br>
 <input type="hidden" name="date_trimise" value="1">
 <input type="submit" name="submit" value="Adauga">
</form>
<?php 
}
else
{
	$prenume = $_GET['prenume'];
	$prenume=trim($prenume);
	$nume = $_GET['nume'];
	$nume=trim($nume);
	$experienta = $_GET['experienta'];
	$experienta=trim($experienta);
	$telefon = $_GET['telefon'];
	$telefon=trim($telefon);
	echo "<h2> Ati introdus:</h2>";
    echo "$prenume <br>"."$nume <br>"."$experienta <br>"."$telefon <br>";
	include "my_connect.php";
	
	$query="INSERT INTO `expert_photography`.`fotografi` ( `nume`, `prenume`, `experienta`, `telefon`) 
	VALUES ('$prenume','$nume','$experienta','$telefon')";
	$result=mysqli_query($conexiune,$query);
	if($result)
	{
		echo "Datele au fost adaugate in baza de date";
	}
}
?>

</body>
</html>