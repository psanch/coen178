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
      foreach ( $highlights as $oneHighlight ) 
    {
      switch ($oneHighlight) {
        case 'CTW1':
            $oneHighlight = 'complete';
            break;
        case 'CTW2':
            $oneHighlight = 'complete';
            break;
        case 'CNI1':
            $oneHighlight = 'complete';
            break;
        case 'CNI2':
            $oneHighlight = 'complete';
            break;
        case 'CNI3':
            $oneHighlight = 'complete';
            break;
        case 'STS':
            $oneHighlight = 'complete';
            break;
        case 'CivicEngagement':
            $oneHighlight = 'complete';
            break;
        case 'Diversity':
            $oneHighlight = 'complete';
            break;
        case 'Ethics':
            $oneHighlight = 'complete';
            break;
        case 'RTC1':
            $oneHighlight = 'complete';
            break;
        case 'RTC2':
            $oneHighlight = 'complete';
            break;
        case 'RTC3':
            $oneHighlight = 'complete';
            break;
        case 'ELSJ':
            $oneHighlight = 'complete';
            break;
        case 'AdvancedWriting':
            $oneHighlight = 'complete';
            break;
        case 'Language':
            $oneHighlight = 'complete';
            break;
        case 'NaturalScience':
            $oneHighlight = 'complete';
            break;
        case 'SocialScience':
            $oneHighlight = 'complete';
            break;
        case 'Mathematics':
            $oneHighlight = 'complete';
            break;
        
      }
      oci_bind_by_name($query, ':StudentID', $StudentID);
      oci_bind_by_name($query, ':CoreRequirements', $oneHighlight);
      // Execute the query
      oci_execute($query);
     }

    OCILogoff($conn);       
}

?>      
