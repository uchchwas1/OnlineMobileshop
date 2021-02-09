<?php
$link=mysqli_connect("localhost","root","");
mysqli_select_db($link,"foodbank");

session_start();
?>


<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Ajker Bazar</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"> -->
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

     <!-- <link rel="stylesheet" href="{{asset('css/style.css') }}"> -->
    <link rel="stylesheet" href="/css/style.css">
    <style>
table {
    width:120%;
}
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
th, td {
   /* padding: 15px; */
  text-align: center;
}
table tr:nth-child(even) {
  background-color: #eee;
}
table tr:nth-child(odd) {
 background-color: #fff;
}
table th {
  background-color: black;
  color: white;
}
</style>
  </head>
  <body style="background-color:powderblue;>

     <div class="wrapper">
       <!-- nav starts -->
       <nav class="navbar navbar-expand-lg navbar-light bg-light">
         <!-- For the gap on border -->
         <div class="container">


         <a class="navbar-brand" href="http://localhost/ajkerbazar/index.html">AJKERBAZAR</a>
         <a class="fa fa-user-circle" style="font-size:36px;color:blue" href="clientprofile.php"></a>


         <div class="collapse navbar-collapse" id="navbarSupportedContent">
           <ul class="navbar-nav mr-auto">
             <li class="nav-item active">
               <a class="nav-link" href="http://localhost/ajkerbazar/index.html">Home <span class="sr-only">(current)</span></a>
             </li>
             <li class="nav-item">
               <a class="nav-link" href="#">About</a>
             </li>
             <li class="nav-item">
               <a class="nav-link" href="editprofile.php"> Edit Profile</a>
             </li>
             <li class="nav-item dropdown">
               <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                 Actions
               </a>
               <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                 <a class="dropdown-item" href="displayorder.php">See Orders</a>
                 <a class="dropdown-item" href="/ajkerbazar/CMS/index.php">Shop</a>
                 <div class="dropdown-divider"></div>
                 <a class="dropdown-item" href="displaying.php">Display Items</a>
               </div>
             </li>
           </ul>

           <form class="form-inline my-2 my-lg-0">
             <div class="input-group mb-3">
             <input type="text" class="form-control" placeholder="Search">
             <div class="input-group-append">
             <button class="btn btn-success" type="submit"><i class="fa fa-search"></i></button>
             </div>
             </div>
             <!-- search button ends -->

           </form>
         </div>
         </div>
         <!-- container div ends -->

         <?php
         if(isset($_SESSION['User']))
          {
               // echo ' Well Come ' . $_SESSION['User'].'<br/>';
               echo '<a href="logout.php?logout">Logout</a>';
          }
          else
          {
              header("location:index.php");
          }
          ?>

       </nav>
       <!-- nav ends -->

       <!-- side bar and content starts -->
       <div class="container">
         <!-- side bar starts -->
         <div class="row">
           <div class="col-md-4">
             <div class="list-group">
             <a href="addproduct.php" class="list-group-item list-group-item-action">Add Item</a>
             <a href="displayitem.php" class="list-group-item list-group-item-action">Delete Item</a>
             <a href="displayedit.php" class="list-group-item list-group-item-action">Update Item</a>
             </div>
           </div>

         <!-- </div> -->
         <!-- side bar ends -->
         <!-- content starts -->
         <!-- <div class="col-md-8">
           <div class="widget"> -->
           <div class="grid_10">
               <div class="box round first">

                 <!--testing -->
                 <h2>Profile</h2>

                 <div class="block">
                   <?php
                   //if(isset($_SESSION['User']))
                 //{
                   $pran2=$_SESSION['User'];
                   $res2=mysqli_query($link,"select * from client where name='$pran2'");
                   //echo "<table border='1'>";
                   //echo "<tr>";

                   // echo "<th>"; echo "delete"; echo "</th>";
                   //echo "</tr>";
                   while ($row=mysqli_fetch_array($res2))
                   {
                     //echo "<tr";
                     //echo "<td>"; ?> <img src="<?php echo $row["pro_pic"]; ?>" height="150" width="150"<?php //echo "</td>";

                     //echo "</tr>";
                     $choya=$row["r_id"];
                     $_SESSION['resid']=$choya;

                   }
                   //echo "</table>";
                 //}
                    ?>

                 <!-- testing ends -->

                 <!-- <h2>Profile</h2> -->
                 <div class="block">
                   <?php
                   //if(isset($_SESSION['User']))
                 //{
                   $pran=$_SESSION['User'];
                   $res=mysqli_query($link,"select * from client where name='$pran'");
                   echo "<table border='1'>";
                   echo "<tr>";
                   echo "<th>"; echo "Picture"; echo "</th>";
                   echo "<th>"; echo "Client Id"; echo "</th>";
                   echo "<th>"; echo "Name"; echo "</th>";
                   echo "<th>"; echo "Email"; echo "</th>";
                   echo "<th>"; echo "Contact"; echo "</th>";
                   echo "<th>"; echo "Shop Id"; echo "</th>";
                   echo "<th>"; echo "Shop Name"; echo "</th>";
                   // echo "<th>"; echo "delete"; echo "</th>";
                   echo "</tr>";
                   while ($row=mysqli_fetch_array($res))
                   {
                     //echo "<tr";
                     echo "<td>"; ?> <img src="<?php echo $row["pro_pic"]; ?>" height="120" width="120"<?php echo "</td>";
                     echo "<td>"; echo $row["c_id"]; echo "</td>";
                     echo "<td>"; echo $row["name"]; echo "</td>";
                     echo "<td>"; echo $row["email"]; echo "</td>";
                     echo "<td>"; echo $row["contact"]; echo "</td>";
                     echo "<td>"; echo $row["r_id"]; echo "</td>";
                     echo "<td>"; echo $row["r_name"]; echo "</td>";
                     echo "</tr>";

                   }
                   echo "</table>";

                 //}
                    ?>



                   </div>

                 </div>

           </div>

         </div>
<!-- content ends -->
       </div>

       <!-- side bar and content ends -->
       <footer class="footer-bottom">
         <p class="text-center">&copy; Rights reserved by CSE482 project team</p>
       </footer>


     </div>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>
