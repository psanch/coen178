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
    
    insertWIPIntoDB($StudentID,$highlights);
}

function prepareInput($inputData){
        $inputData = trim($inputData);
        $inputData  = htmlspecialchars($inputData);
        return $inputData;
}

function insertWIPIntoDB($StudentID,$highlights)
{
  $conn=oci_connect( 'abhatia','!', '//dbserver.engr.scu.edu/db11g');

  if(!$conn) 
  {
    print "<br> connection failed:";
    exit;
  }
   
   $query = oci_parse($conn, "Insert Into CoreRequirements(StudentID,highlight) values(upper(:title),:)");

   // $highlights is an array containing all the values
   // selected from the multiple checkboxes

    foreach ( $highlights as $oneHighlight ) 
    {
      switch ($oneHighlight) {
        case 'CTW1':
            $oneHighlight = 'wip';
            break;
        case 'CTW2':
            $oneHighlight = 'wip';
            break;
        case 'CNI1':
            $oneHighlight = 'wip';
            break;
        case 'CNI2':
            $oneHighlight = 'wip';
            break;
        case 'CNI3':
            $oneHighlight = 'wip';
            break;
        case 'STS':
            $oneHighlight = 'wip';
            break;
        case 'CivicEngagement':
            $oneHighlight = 'wip';
            break;
        case 'Diversity':
            $oneHighlight = 'wip';
            break;
        case 'Ethics':
            $oneHighlight = 'wip';
            break;
        case 'RTC1':
            $oneHighlight = 'wip';
            break;
        case 'RTC2':
            $oneHighlight = 'wip';
            break;
        case 'RTC3':
            $oneHighlight = 'wip';
            break;
        case 'ELSJ':
            $oneHighlight = 'wip';
            break;
        case 'AdvancedWriting':
            $oneHighlight = 'wip';
            break;
        case 'Language':
            $oneHighlight = 'wip';
            break;
        case 'NaturalScience':
            $oneHighlight = 'wip';
            break;
        case 'SocialScience':
            $oneHighlight = 'wip';
            break;
        case 'Mathematics':
            $oneHighlight = 'wip';
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
