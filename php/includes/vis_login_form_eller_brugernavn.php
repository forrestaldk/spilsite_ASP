<?php

// [TODO]:
// Den udleverede kode viser login formularen, også når man allerede er logget ind.
// Det skal du lave om på, så følgende er opfyldt:
//
//     Hvis man er logget ind:
//         Udskriv brugernavnet og vis et logud link
//         (i "profil.php" kan du se hvordan det skal se ud)
//
//     Hvis man IKKE er logget ind:
//         Vis login formularen.


$bruger_username = "";
$bruger_password = "";

if (isset ($_POST['login_submit']))
{
	$bruger_username = $_POST['bruger_username'];
	$bruger_password = $_POST['bruger_password'];

	$sql = "
		SELECT * FROM bruger
		WHERE bruger_username = '$bruger_username'
		AND   bruger_password = '$bruger_password'
	";

	$result = mysqli_query ($db_link, $sql) or die (mysqli_error ($db_link));
	$antal = mysqli_num_rows ($result);

	if ($antal == 1)
	{
		$row = mysqli_fetch_assoc ($result);
		$_SESSION['bruger_id']       = $row['bruger_id'];
		$_SESSION['bruger_username'] = $row['bruger_username'];
		$_SESSION['bruger_rolle_id'] = $row['fk_rolle_id'];

		header ("Location: profil.php");  exit;
	}
	else
	{
		echo "<div id='login_besked'>Forkert brugernavn eller kode.</div>";
	}
}

?>


<form method='post'>

	<label for='bruger_username'>Brugernavn</label>
	<input id='bruger_username' type='text' name='bruger_username' value="<?php echo $bruger_username; ?>">

	<label for='bruger_password'>Kodeord</label>
	<input id='bruger_password' type='password' name='bruger_password'>

	<input type='submit' name='login_submit' value='Login'>

</form>
