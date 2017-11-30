<!DOCTYPE html>
<html lang="en">
<head>
        <meta charset="utf-8"/>
      <title>Get Book Highlights</title>
   </head>
   <body>

   		<br>
		<a href='showBooks.php?show=true'> SHOW All Cores by Department</a>
		<br><br>


<?php

if (isset($_GET['show'])) {
    showBooks();
}
 
if ($_SERVER["REQUEST_METHOD"] == "POST") {

    // collect input data

	/* 
	 *Show classes that fulfill a specific Department Requirement
	 */

    $CTW1 = $_POST['CTW1'];
    $CTW2 = $_POST['CTW2'];
   	$CNI1 = $_POST['CNI1'];
   	$CNI2 = $_POST['CNI2'];
   	$CNI3 = $_POST['CNI3'];
    $STS = $_POST['STS'];
   	$CivicEngagement = $_POST['CivicEngagement'];
   	$Diversity = $_POST['Diversity'];
   	$Ethics = $_POST['Ethics'];
    $RTC1 = $_POST['RTC1'];
   	$RTC2 = $_POST['RTC2'];
   	$RTC3 = $_POST['RTC3'];
   	$ELSJ = $_POST['ELSJ'];
   	$AdvancedWriting = $_POST['AdvancedWriting'];
   	$Arts = $_POST['Arts'];
   	$Language = $_POST['Language'];
   	$NaturalScience = $_POST['NaturalScience'];
   	$SocialScience = $_POST['SocialScience'];
	$Mathematics = $_POST['Mathematics'];
   	

	/* 
	 *STRING INPUTS
	 */
   	$title = $_POST['title'];
   	$StudentID = $_POST['StudentID'];
   	
     if (!empty($title)){
		$title = prepareInput($title);
     }
     if (!empty($StudentID)){
		$StudentID = prepareInput($StudentID);
     }
	

	$highlights = array();

	// Get the values for all selected checkboxes
	foreach($_POST['hlight'] as $check) {
          array_push($highlights,$check);
    }


function prepareInput($inputData){
	$inputData = trim($inputData);
  	$inputData  = htmlspecialchars($inputData);
  	return $inputData;
}

function showCores($title){

$conn=oci_connect( /* insert login details */ );
	if(!$conn) {
	     print "<br> connection failed:";
        exit;
	}
	$query = oci_parse($conn, "SELECT * FROM AllClasses where dept = upper(:title)");

	oci_bind_by_name($query, ':title', $title);

	oci_execute($query);
	while (($row = oci_fetch_array($query, OCI_BOTH)) != false) {
		echo "<font color='green'> $row[0] </font></br>";
		
	OCILogoff($conn);
}



  ?>
</body>

</html>
