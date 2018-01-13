<?php
	session_start();

    $Email = $_POST['email'];
    $password = $_POST['password'];
    $bool = true;

    mysql_connect("localhost", "root", "") or die (mysql_error()); //Connect to server
    mysql_select_db("database") or die ("Cannot connect to database"); //Connect to database
    $query = mysql_query("Select * from logindetails"); // Query the users table
    $exists = mysql_num_rows($query); //Checks if username exists
    $table_email = "";
    $table_password = "";
    if($exists > 0) //IF there are no returning rows or no existing username
    {
       while($row = mysql_fetch_assoc($query)) // display all rows from query
       {
          $table_email = $row['email']; // the first username row is passed on to $table_users, and so on until the query is finished
          $table_password = $row['password']; // the first password row is passed on to $table_password, and so on until the query is finished
       }
       if(($Email == $table_email) && ($password == $table_password))// checks if there are any matching fields
       {
          if($password == $table_password)
          {
             $_SESSION['email'] = $Email; //set the username in a session. This serves as a global variable
             header("location: subjects.html"); // redirects the user to the authenticated home page
          }
       }
       else
       {
        Print '<script>alert("Incorrect Password or E-mail");</script>'; // Prompts the user
        Print '<script>window.location.assign("sign-in.html");</script>'; // redirects to login.php
       }
    }
    else
    {
        Print '<script>alert("Incorrect email!");</script>'; // Prompts the user
        Print '<script>window.location.assign("sign-in.html");</script>'; // redirects to login.php
    }
?>