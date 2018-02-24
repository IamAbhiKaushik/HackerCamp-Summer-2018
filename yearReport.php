<?php
$servername = "localhost";
$username = "localhost";
$password = "";
$dbname = "test";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$money = array('');
for ($i=1; $i < 13; $i++) { 
    $money[$i] =  array("Grocery"=>0, "Entertainment"=>0, "Vehicle"=>0, "Food"=>0, "Miscellaneous"=>0, "total"=>0);   
};
// $money =  array("Grocery"=>0, "Entertainment"=>0, "Vehicle"=>0, "Food"=>0, "Miscellaneous"=>0, "total"=>0);

$sql = "SELECT id, amount, comment, day, type FROM expense ORDER BY type ASC ";
$result = $conn->query($sql);
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
             $k = $row["type"];
             $d = substr($row["day"],3,2);
             if ($d>9) {}
             else {
                $d = substr($row["day"],4,1);
             }
             $money[$d][$k] = $money[$d][$k]+$row["amount"];
             $money[$d]["total"]= $money[$d]["total"] + $row["amount"];
        }
    }
    else {
        echo 'Request failed. Please try again';
    }
?>

<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <title>Personal Expense Manager | Abhinav Kaushik</title>
    <!-- Styles -->
    <style>
        html,
        body {
            background-color: #fafbfc;
            color: #636b6f;
            font-family: Open Sans, sans-serif;
            /*font-family: 'Raleway', sans-serif;*/
            font-weight: 300;
            height: 100vh;
            margin: 0;
            overflow: auto;
        }
        a {
            text-decoration: none;
        }
        .content {
            margin: 0;
            width: 100%;
            position: relative;
            top: 15vh;
            /*border: 2px solid red;*/
            /*text-align: center;*/
        }
        .header {

            z-index: 1;
            background: white;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            /*font-size: 1.25rem;*/
            color: #525c65;
            box-shadow: 0 1px 20px 0 rgba(46, 61, 73, .2);
        }
        ul {
            margin-bottom: 0;
        }
        .left {
            width: 20%;
            float: left;
            margin-top: 0;
        }
        
        .right {
            float: right;
            padding-right: 5vw;
            margin-top: 0;
        }
        .tabb li {
            float: right;
            list-style-type: none;
            padding: 20px;
        }
        .tabb li p {
            margin: 0;
            padding: 10px;
            text-align: center;
            cursor: pointer;
            padding-right: 5px;
            padding-left: 5px;
        }
        .btnB {
            background: #02ccba;
            color: white;
            /*width: 7.75rem;*/
            box-shadow: 8px 10px 20px 0 rgba(46, 61, 73, .15);
            text-transform: capitalize;
            border-radius: 5px;
            margin: 0;
            padding: 10px;
            text-align: center;
            cursor: pointer;

        }
        
        #btnB {
            padding-right: 20px;
            padding-left: 20px;
        }
        
        .btnB:hover {
            box-shadow: 2px 4px 8px 0 rgba(46, 61, 73, .2);
        }
        
        .total {
            width: 100%;
            margin: auto;
        }
        
        .six {
            width: 100%;
            float: left;
            padding-top: 5vh;
            padding-bottom: 5vh;
            background: #fafbfc
        }
        
        .lapi {
            display: none;
        }
        
        .mobi {
            display: block;
        }
        
        
        @media(min-width: 62em) {
            .lapi {
                display: block;
            }
            .mobi {
                display: none;
            }
            .six {
                width: 50%;
                float: left;
                padding-top: 5vh;
                padding-bottom: 5vh;
                background: #fafbfc
            }
        }
        
        #piechart {
            box-shadow: 5px 5px 25px 0 rgba(46,61,73,.2);
            background: white;
            margin: 3vh;
            padding: 40px;
            text-align: center;
            padding-top: 0;
            border-radius: .375rem;
        }
        #piechart:hover{
          cursor: pointer;
          box-shadow: 2px 4px 8px 0 rgba(46,61,73,.2);
        }

    </style>
</head>

<body>
    <div class="header">
        <ul class="left tabb">
            <li style="float: left;padding-left: 0;">

                <b style="margin: 0;
    padding: 10px;
    text-align: center;
    cursor: pointer;
    padding-right: 5px;
    padding-left: 5px;" class="lapi"> <a href="index.php" style="text-decoration: none;color: #525c65">
                Expense Manager
               </a></b>
                <b class="mobi" style="
    margin: 0;
    padding: 10px;
    text-align: center;
    cursor: pointer;
    padding-right: 5px;
    padding-left: -15px;"><a href="/" style="text-decoration: none;
    color: #525c65;">Manager</a></b>

            </li>
        </ul>
        <ul class="right tabb">

            <li>
                <a href="report.php" style="text-decoration: none;color: #525c65">
                    <p class="btnB" id="btnB">My Reports</p>
                </a>
            </li>
            <li>
                <a href="yearReport.php" style="text-decoration: none;color: #525c65">
                    <p class="btnB" id="btnB">Year Report</p>
                </a>

            </li>
            
        </ul>
    </div>
    <div class="content">

        <div class="total">
            <div id="chart_div" style="height: 60vh"></div>
        </div>




    </div>

    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawVisualization);

      function drawVisualization() {
        // Some raw data (not necessarily accurate)
        var data = google.visualization.arrayToDataTable([

         ['Month', 'Grocery', 'Entertainment', 'Vehicle', 'Food', 'Miscellaneous', 'Average']
         <?php 
         for ($i=1; $i < 13; $i++) { 
            echo ",[".$i.",".$money[$i]['Grocery'].",".$money[$i]['Entertainment'].",".$money[$i]['Vehicle'].","
         .$money[$i]['Food'].",".$money[$i]['Miscellaneous'].",".($money[$i]['total']/5)."]" ;
         }
         ?>

         ]);

    var options = {
      title : 'Monthly Expenses by Category for an year',
      vAxis: {title: 'Monthly Expense'},
      hAxis: {title: 'Month'},
      seriesType: 'bars',
      series: {5: {type: 'line'}}
    };

    var chart = new google.visualization.ComboChart(document.getElementById('chart_div'));
    chart.draw(data, options);
  }
    </script>
    

</body>

</html>
