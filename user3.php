<html >

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Health Inspector Details</title>
    <link rel="stylesheet" type="text/css" href="./user1.css">
    <style>
         #pd{
            font-size: 32px;
            margin-top: -16px;
            }
         #submit{
            font-size:15px;
            }
		 a{
            text-decoration: none;
			color:white;
            }
            button{
                margin-left: 20px;
                font-size: 17px;  
            }	
	        </style>
                
                
	<h3 align ="right">
                <font face="cinzel">
                    <button class="a1"><a href="index.html">HOME</a></button>&nbsp;&nbsp;&nbsp;&nbsp;                 
                </font>
            </h3>
           
	<h1 id="pd">Health Inspector Details</h1>
</head>

<body>

  <div class="searchbox">
  <center>
    <h1> Search Here </h1>
    <form action="" method="post">
        <input type="text" placeholder="Enter PINCODE" name="search">
        <button type="submit" name="submit" id="submit">Search</button>
    </form>


    </center>
    </body>
    </html>

<?php


if (isset($_POST['submit'])) {
    $searchValue = $_POST['search'];
    $con = new mysqli("localhost", "root", "", "test");
    if ($con->connect_error) {
        echo "connection Failed: " . $con->connect_error;
    } else {
        $sql = "SELECT name,office_add,off_phone FROM health_inspector WHERE pincode LIKE '%$searchValue%'";

        $result = $con->query($sql);
        echo '<table class="someclass">';
        echo "<tr>

        <th>NAME</th>
        <th>OFFICE ADDRESS</th>
        <th>OFFICE PHONE</th>



        </tr>";

        while ($row = $result->fetch_assoc()) {
          echo "<tr>";

          echo "<td>" . $row['name'] . "</td>";
          echo "<td>" . $row['office_add'] . "</td>";
          echo "<td>" . $row['off_phone'] . "</td>";
          

        echo "</tr>";

        }
        echo "</table>";
      }

  }
?>
