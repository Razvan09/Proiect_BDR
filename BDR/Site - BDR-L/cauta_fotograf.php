<body>
<head>
  <title>Cauta un fotograf</title>
</head>
<body bgcolor="#99AABB">
<center>
<form method="get">
	Nume fotograf: <input type="text" name="nume">
	<input type="submit" name="submit" value="Cauta">
</form>

<?php
include "my_connect.php";

if(isset($_GET['nume']))
{
	$nume=$_GET['nume'];
	$query="SELECT * FROM fotografi WHERE nume='$nume'";
	
	// sau: 	$query="SELECT * FROM fotografi WHERE nume like '%$nume%'";
	$result=mysqli_query($conexiune,$query);
	if(!$result)
	{
		die("Nu am gasit date! ".mysql_error());
	}
	$nr=mysqli_num_rows($result);
	if($nr==0)
		echo"Nu am gasit niciun fotograf cu numele <b><i>".$nume."</i></b>!";
	else
	{
				echo"<b><i>".$nume."</i></b> exista in baza de date!";
				
	echo "
		<style>
			table {
				border-collapse: collapse;
				width: 40%;
				cellpadding: 3 px;
				cellspacing: 3 px;
				text-align: center;
			}
			th, td {
		     height: 50px;
             vertical-align: center;
			 border-bottom: 1px solid #ddd;
			}
			tr:hover {
		       background-color: #f5f5f5;
			}
		</style>";

/*echo "<table>
		  <tr>
			<th>ID</th><th>Prenume</th><th>Nume</th><th>Experienta</th>
			<th>Telefon</th>
		  </tr>";
*/
		  
while($row=mysqli_fetch_array($result,MYSQL_ASSOC))
{
	echo "<tr>
			<td>{$row['ID']}</td><td>{$row['Nume']}</td>
			<td>{$row['Prenume']}</td>
			<td>{$row['Experienta']}</td><td>{$row['Telefon']}</td>
		  </tr>";
}
echo "</table></center>";
	}
}


?>


</body>
</html>