<?php
 include "../navbarwWthoutSearch.php"
?>
<?php 
require_once 'classes/entry.php';
$connect = mysqli_connect("localhost", "root", "", "foodbank");
$temp = $_GET["id"];
$query = "SELECT * FROM menu WHERE id = $temp";
$result = mysqli_query($connect, $query);
		if(mysqli_num_rows($result) > 0)
				{
					while($row = mysqli_fetch_array($result))
					{
						
						$id = $row['id'];
						$pName = $row['items'];
						$price = $row['price'];
						$code=$row['code'];
						$description = $row['product_desc'];
						$product_image = $row["product_image"];
						
					}	

                }




?>

<!DOCTYPE html>
<html>
<head>
	<title>View-Prod</title>
	<link rel="stylesheet" type="text/css" href="../css/style.css">
	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>

	
	<div style="margin: 0 97px; padding: 10px">

		<?php 
		
			echo '
				<div style="float: left;">
				<div>
				   <img src="../admin/'.$product_image.'" style="height: 500px; width: 500px; padding: 2px; border: 2px solid #c7587e;">
					
				</div>
				</div>
				<div style="float: right;width: 40%;color: #067165;background-color: #ddd;padding: 10px;">
					<div style="">
						<h3 style="font-size: 25px; font-weight: bold; ">'.$pName.'</h3><hr>
						<h3 style="padding: 20px 0 0 0; font-size: 20px;">Price: '.$price .'TAKA</h3><hr>					
						<h3 style="padding: 20px 0 0 0; font-size: 22px; ">Description:</h3>
						<p>
							'.$description.'
						</p>
						<div>
							<h3 style="padding: 20px 0 5px 0; font-size: 20px;">Want to buy this product? </h3>
							<div id="srcheader">
								<form id="" method="post" action="">
								        <input type="submit" name="addcart" value="Add to cart" class="srcbutton" >
								</form><br/>
								<form id="" method="post" action="">
								        <input type="submit" value="Order Now" class="srcbutton" >
								</form>
								<div class="srcclear"></div>
							</div>
						</div>
					</div>
				</div>
			';
		?>

	</div>
</body>
</html>