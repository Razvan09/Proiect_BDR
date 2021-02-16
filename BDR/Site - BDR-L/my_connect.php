<?php

error_reporting(0);

$conexiune=mysqli_connect('localhost','root','','expert_photography');
if(!$conexiune)
{
	die('Nu s-a putut realiza conexiunea!'.mysql_error());	
}

mysqli_select_db($conexiune,expert_photography);

?>