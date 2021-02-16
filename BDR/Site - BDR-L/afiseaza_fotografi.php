<?php
//error_reporting(0);

$servername = "localhost";
$username = "root";
$password = "";

$link = mysqli_connect($servername, $username, $password);
if(! $link )
{
  die('Nu se poate realiza conexiunea: ' . mysql_error());
}

echo "<center><table>
		  <tr>
			<th>ID</th><th>Prenume</th><th>Nume</th><th>Experienta</th><th>Telefon</th>
		  </tr>"; 
		  
$sql = 'SELECT * FROM fotografi';

mysqli_select_db($link,'expert_photography');
$result = mysqli_query( $link, $sql );
if(! $result )
{
  die('Datele nu au putut fi accesate. ' . mysql_error());
}

while($row = mysqli_fetch_array($result, MYSQLI_ASSOC))
{

echo "
<style>
     table {
		    border-collapse: collapse;
			border: 2 px solid black;
	        width: 50%;
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

echo "<tr>
			<td>{$row['ID']}</td><td>{$row['Prenume']}</td><td>{$row['Nume']}</td><td>{$row['Experienta']}</td><td>{$row['Telefon']}</td>
		  </tr>";	 
		 } 
//echo "Preluarea datelor s-a realizat cu succes!\n";
mysqli_close($link);
?>

<a href="editeaza_fotograf.php" class="btn sonar-btn black-btn">Editeaza</a>