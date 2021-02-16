<body>
<head>
  <title>Editeaza un fotograf</title>
</head>
<body bgcolor="#99AABB">
<?php
require_once("my_connect.php");
$id=$_GET['ID'];
$actualizare=$_GET['actualizare'];
if($actualizare==1)
{
	$id=$_POST['idm'];
	$nume=$_POST['numem'];
	$prenume=$_POST['prenumem'];
	$experienta=$_POST['experientam'];
	$telefon=$_POST['telefonm'];
	
	$query="UPDATE fotografi SET Nume='$nume', Prenume='$prenume', 
	Experienta='$experienta', Telefon='$telefon' where ID='$id'";
	$result=mysqli_query($conexiune,$query);
	echo "S-au actualizat datele!<br><br><br>";
	
	echo "
		<form method='post' action='editeaza_fotograf.php?actualizare=1&ID=$id'>
			ID:  <input type='text' name='idm' value='$id'><br><br>
			Nume:  <input type='text' name='numem' value='$nume'><br><br>
			Prenume: <input type='text' name='prenumem' value='$prenume'><br><br>
			Experienta:     <input type='text' name='experientam' value='$experienta'><br><br>
			Telefon:     <input type='text' name='telefonm' value='$telefon'><br><br>
			<input type='submit' name='modifica' value='Modifica'>
		</form>";
	
	echo "<br><br><br><a href='afiseaza_fotografi.php'>Editare</a>";
}
else
{

$query="SELECT * FROM fotografi WHERE ID='$id'";
$result=mysqli_query($conexiune,$query);
$row=mysqli_fetch_array($result,MYSQL_ASSOC);
$id=$row['ID'];
$nume=$row['Nume'];
$prenume=$row['Prenume'];
$experienta=$row['Experienta'];
$telefon=$row['Telefon'];

echo "
		<form method='post' action='editeaza_fotograf.php?actualizare=1&ID=$id'>
			ID:  <input type='text' name='idm' value='$id'><br><br>
			Nume:  <input type='text' name='numem' value='$nume'><br><br>
			Prenume: <input type='text' name='prenumem' value='$prenume'><br><br>
			Experienta:     <input type='text' name='experientam' value='$experienta'><br><br>
			Telefon:     <input type='text' name='telefonm' value='$telefon'><br><br>
			<input type='submit' name='modifica' value='Modifica'>
		</form>";
}		
?>

<a href="adauga_fotograf.php" class="btn sonar-btn black-btn">Adauga fotograf</a>
<a href="sterge_fotograf.php" class="btn sonar-btn black-btn">Sterge fotograf</a>
</body>
</html>