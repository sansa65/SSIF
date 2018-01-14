<?php
/******************************************************
------------------Required Configuration---------------
Please edit the following variables so the forum can
work correctly.
******************************************************/

/*We log to the DataBase
$conn=mysqli_connect('localhost', 'root', '');
mysqli_select_db('$conn','forum_db'); */

//1. Create a database connection
$connection = mysqli_connect('localhost','root','');

// 2. Select a database to use 
$db_select = mysqli_select_db($connection, 'ssif_forum_db');

//Username of the Administrator
$admin='mafia17.1';

/******************************************************
-----------------Optional Configuration----------------
******************************************************/

//Forum Home Page
$url_home = 'index.php';

//Design Name
$design = 'default';


/******************************************************
----------------------Initialization-------------------
******************************************************/
include('init.php');
?>