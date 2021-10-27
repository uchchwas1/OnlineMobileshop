<?php

    $con=mysqli_connect('localhost','root','','onlinemobileshop');

    if(!$con)
    {
        die(' Please Check Your Connection'.mysqli_error($con));
    }
?>
