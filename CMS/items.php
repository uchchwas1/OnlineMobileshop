</br></br>
	<?php



	//if (!isset($_GET['r_id'])) {
	//	header('location:index.php');
	//}

	require_once'classes/entry.php';





	$entry = new Entry();

	$entry->SqlSelectEntryById($_GET['r_id']);


	//print_r($_GET);
	//print_r($entry);
   $connect = mysqli_connect("localhost", "root", "", "foodbank");
/*
		$username = mysqli_real_escape_string($connect, $_POST['username']);
		$password = mysqli_real_escape_string($connect, $_POST['password']);



$query = "SELECT * FROM users WHERE username='$username' AND password='$password'";
$results = mysqli_query($connect, $query);

			if (mysqli_num_rows($results) == 1) {
				$_SESSION['username'] = $username;
				$_SESSION['success'] = "You are now logged in";
				echo "Hello ".$username;

			}else {
				array_push($errors, "Wrong username/password combination");
			}




	*/



//user name:
/*
if(isset($_SESSION['username'])){
	echo "Hello ".$_SESSION['username'];
	echo "<br><a href='logout.php'><input type=button value=logout name=logout></a>";
}*/
?>




<?php
 //ORDER
 if(isset($_POST["order"]))
	 {
		 $x=0;
		 $datas=array();
		if(!empty($_SESSION["shopping_cart"]))
					{
						$total = 0;
						foreach($_SESSION["shopping_cart"] as $keys => $values)
						{

							//$datas[]='{'."Shop_ID:".'"'.$_GET["r_id"]."item name => ".$values['item_name']." item price=> ".$values['item_price']." item quantity=> ".$values['item_quantity'].'</br>';

							//echo $datas[$x++];\
							//make json format

							    $datas[] = array(
                                                           "Shop_ID"  => $_GET["r_id"],

                                                           "item_name" => $values['item_name'],


                                                            "item_price" => $values['item_price'],


                                                            "item_quantity" => $values['item_quantity']


                                                    );

						}


		 if(!isset($_SESSION['username']))
			 echo '<script>alert("you have to login")</script>';
	     else {
         $tem=$_GET['r_id'];
		 $sql="UPDATE users SET r_id = $tem, status='Pending', order_details ='".json_encode($datas)."' WHERE username ='". $_SESSION['username']."'";
          mysqli_query($connect, $sql);
		 }

		 }
	}
	?>




				<!-- Main -->
					<div id="main">



<?php
  $connect = mysqli_connect("localhost", "root", "", "foodbank");
    if ($entry->getId() != -1) {  ?>



 <?php
if(isset($_POST["add_to_cart"]))
{
	if(isset($_SESSION["shopping_cart"]))
	{
		$item_array_id = array_column($_SESSION["shopping_cart"], $_POST["id"]);
		if(!in_array($_GET["r_id"], $item_array_id))
		{
			$count = count($_SESSION["shopping_cart"]);
			$item_array = array(
				'shop_id'			=>	$_GET["r_id"],
				'item_id'         =>  $_POST["id"],
				'item_name'			=>	$_POST["hidden_name"],
				'item_price'		=>	$_POST["hidden_price"],
				'item_quantity'		=>	$_POST["quantity"]
			);
			$_SESSION["shopping_cart"][$count] = $item_array;
		}
		else
		{
			echo '<script>alert("Item Already Added")</script>';
		}
	}
	else
	{
		$item_array = array(
			'shop_id'			=>	$_GET["r_id"],
			'item_id'         =>  $_POST["id"],
			'item_name'			=>	$_POST["hidden_name"],
			'item_price'		=>	$_POST["hidden_price"],
			'item_quantity'		=>	$_POST["quantity"]
		);
		$_SESSION["shopping_cart"][0] = $item_array;
	}
}


if(isset($_GET["action"]))
{
	if($_GET["action"] == "delete")
	{
		foreach($_SESSION["shopping_cart"] as $keys => $values)
		{
			if($values["item_id"] == $_GET["id"])
			{


				unset($_SESSION["shopping_cart"][$keys]);
				//echo '<script>alert("Item Removed")</script>';
				//echo '<script>window.location="single.php"</script>';
				/*echo '<script>window.location="single.php?r_id=<?php echo $_GET["r_id"];?>"</script>';*/
			}
		}
	}
}

?>

