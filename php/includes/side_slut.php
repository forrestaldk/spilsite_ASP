<?php
echo '<pre>Indhold af $_SESSION ';
print_r ($_SESSION);
echo '</pre>';

// ==============================================================

if (isset($g_rettigheder))
{
	echo '<pre>Indhold af $g_rettigheder ';
	print_r ($g_rettigheder);
	echo '</pre>';
}

?>
