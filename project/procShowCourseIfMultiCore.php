<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8"/>
      <title>Show Multi-Core Courses</title>
   </head>
   <body>

   <!-- Exercise 2: Complete the URLs -->
   <a href='procShowCourseIfMultiCore.php?show=true'>Show Course if it Satisfies a Core Requirement</a>
   <br><br>
	<p>We apologize for the error messages where no second or third core can be found.</p>

	<br><br>
   <!-- Add a link here to call your new function, bookDetails -->

<?php

if (isset($_GET['show'])) {
    showMultiCore();
}


function showMultiCore(){
	//connect to your database. Type in your username, password and the DB path
$conn=oci_connect( 'psanchez','a47k7S4QOi', '//dbserver.engr.scu.edu/db11g' );
	if(!$conn) {
	     print "<br> connection failed:";
        exit;
	}
	$query = oci_parse($conn, "SELECT * FROM CoreCourse where C2 in ('CTW1','CTW2','CTW3','CNI1','CNI2','CNI3','STS','CivicEngagement','Diversity','Ethics','RTC1','RTC2','RTC3','ELSJ','AdvancedWriting','Arts','Language','NaturalScience','SocialScience','Mathematics')");

	// Execute the query
	oci_execute($query);
	while (($row = oci_fetch_array($query, OCI_BOTH)) != false) {
		// We can use either numeric indexed starting at 0
		// or the column name as an associative array index to access the colum value
		// Use the uppercase column names for the associative array indices
		echo "********</br>";
		echo "<font color='red'> SectionNo:  $row[0] </font></br>";
		echo "<font color='blue'> Department: $row[1] </font></br>";
		echo "<font color='blue'> CourseNo:   $row[2] </font></br>";
		echo "<font color='green'> C1:         $row[3] </font></br>";
		echo "<font color='green'> C2:         $row[4] </font></br>";
		echo "<font color='green'> C3:         $row[5] </font></br>";
	}
	OCILogoff($conn);
}


?>
<!-- end PHP script -->
   </body>
</html>
