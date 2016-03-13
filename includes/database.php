<?php

require_once("config.php");

// easier to break up different databases into one class, instead of having multiple class files

class MySQLDatabase{

    private $connection;

    function __construct()
    {
        $this->open_connection();
    }

    public function open_connection()
    {
        $connection = mysqli_connect(DB_SERVER, DB_USER, DB_PASS, DB_NAME);
        if(mysqli_connect_errno()){
           die("Database connection failed:" .
             mysqli_connect_error() . "(" . mysqli_connect_errno() . ")");
        }
    }

    public function close_connection()
    {
        if(isset($this->connection))
        {
            mysqli_close($this->connection);
            unset($this->connection);
        }
    }

    public function query()
    {
        $result = mysqli_query($this->$connection, $sql);
        $this->confirm_query($result);
        return $result;
    }

    // this is for the class only, just to check if there's a connection, no need for another class or method to use

    private function confirm_query($result)
    {
        if (!$result)
        {
            die("Database query failed");
        }
    }

    // here this can be called outside of the class and available for use by another piece of code

    public function mysql_prep($string)
    {
        $escaped_string = mysqli_real_escape_string($this->connection, $string);

        return $escaped_string;
    }
}

$database = new MySQLDatabase();

// here just making a reference variable to make typing easier

$db =& $database;

?>