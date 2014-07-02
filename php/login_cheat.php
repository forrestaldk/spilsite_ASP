<?php
ob_start();
session_start();

include ("includes/db_connect.php");

if (isset ($_GET['bruger_id']))
{
	$bruger_id = $_GET['bruger_id'];

	$sql = "SELECT * FROM bruger WHERE bruger_id = '$bruger_id' ";
	$result = mysqli_query ($db_link, $sql) or die (mysqli_error ($db_link));

	while ($row = mysqli_fetch_assoc ($result))
	{
		$_SESSION['bruger_id']         = $row['bruger_id'];
		$_SESSION['bruger_username'] = $row['bruger_username'];
		$_SESSION['bruger_rolle_id']   = $row['fk_rolle_id'];

		header ("Location: profil.php");  exit;
	}
}

header ("Location: index.php");  exit;