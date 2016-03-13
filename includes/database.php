<?php

require_once("config.php");

class MySQLDatabase{

    function open_connection(){

        $connection = mysqli_connect(DB_SERVER, DB_USER, DB_PASS, DB_NAME);

        if(mysqli_connect_errno()){

           die("Database connection failed:" .
               mysqli_connect_error() .
               "(" . mysqli_connect_errno() . ")"
            );
        }
    }

}

$database = new MySQLDatabase();


?>