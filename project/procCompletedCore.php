<!DOCTYPE html>
<html lang="en">
<head>
        <meta charset="utf-8"/>
      <title>Get Book Highlights</title>
   </head>
   <body>

   <a href='showBooks.php?show=true'>Show Books you have read</a>
   <br><br>

<!-- Begin PHP script -->

<?php

if (isset($_GET['show'])) {
    showBooks();
}



function CompletedCores($studentID){
        //connect to your database. Type in your username, password and the DB path
$conn=oci_connect( 'abhatia','*!', '//dbserver.engr.scu.edu/db11g'/* insert login details */ );
        if(!$conn) {
             print "<br> connection failed:";
        exit;
        }
        $query = oci_parse($conn, "SELECT * FROM CoreRequirements where studentID= ");
        oci_execute($query);
        while (($row = oci_fetch_array($query, OCI_BOTH)) != false) 
        {
                echo "<font color='green'> $row[0] </font></br>";
        }



        OCILogoff($conn);
}


?>
<!-- end PHP script -->
   </body>
</html>
