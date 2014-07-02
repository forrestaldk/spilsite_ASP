<?php
echo "<ul id='nav_logincheat'>";

	echo "<li style='color: #1895FD'><b>Login cheat: </b></li>";

	$sql = "
		SELECT * FROM bruger
		INNER JOIN rolle ON fk_rolle_id = rolle_id
		ORDER BY fk_rolle_id ASC, bruger_username ASC";

	$result = mysqli_query ($db_link, $sql) or die (mysqli_error ($db_link));

	while ($row = mysqli_fetch_assoc ($result))
	{
		echo "<li>";
		echo "<a href='login_cheat.php?bruger_id=$row[bruger_id]'>$row[bruger_username]</a>";
		echo "<br /><span>($row[rolle_navn])</span>";
		echo "</li>";
	}

	echo "<li>";
	echo "<a href='logud.php' style='color: yellow'>Logud</a>";
	echo "<br /><span>(Gæst)</span>";
	echo "</li>";

echo "</ul>";