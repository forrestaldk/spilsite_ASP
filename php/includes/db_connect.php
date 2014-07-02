<?php
$host      =  "localhost";
$user      =  "root";
$password  =  "";  // På Mac skal password typisk være "root" også
$database  =  "wi3_brugere_og_roller";

// Opret forbindelse til databasen
$db_link = mysqli_connect ($host, $user, $password, $database) or die (mysqli_error());

// Følgende linje sørger for, at du kan udskrive ÆØÅ korrekt
mysqli_query ($db_link, "SET NAMES utf8");