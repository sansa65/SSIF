<?php

// Create a database connection
$connection = mysqli_connect('localhost','root','');

// Select a database to use 
$db_select = mysqli_select_db($connection, 'ssif_forum_db');

//Username of the Administrator
$admin='mafia17.1';

//Forum Home Page
$url_home = 'index.php';

//Design Name
$design = 'default';


include('init.php');
?>