<?php

if ($_SERVER["REQUEST_METHOD"] == "POST") {

    $StudentID = $_POST['StudentID'];
    

if (!empty($StudentID)){
    $StudentID = prepareInput($StudentID);
}

    $completed = array();
    // Get the values for all selected checkboxes
    foreach($_POST['hlight'] as $check) {
      array_push($highlights,$check);
    }
    // Call the function to insert completed cores
    // into CoreRequirements table
    
    insertCoresCompleteIntoDB($StudentID,$highlights);
}

function prepareInput($inputData){
        $inputData = trim($inputData);
        $inputData  = htmlspecialchars($inputData);
        return $inputData;
}

function insertCoresCompletedIntoDB($StudentID,$highlights)
{
  $conn=oci_connect( 'abhatia','!', '//dbserver.engr.scu.edu/db11g');

  if(!$conn) 
  {
    print "<br> connection failed:";
    exit;
  }
   
   $query = oci_parse($conn, "Insert Into Book_HighLights(title,highlight) values(upper(:title),:highlight)");

   // $highlights is an array containing all the values
   // selected from the multiple checkboxes

    foreach ( $highlights as $oneHighlight ) 
    {
      oci_bind_by_name($query, ':StudentID', $StudentID);
      oci_bind_by_name($query, ':CoreRequirements', $oneHighlight);
      // Execute the query
      oci_execute($query);
     }

    OCILogoff($conn);       
}

?>
        
