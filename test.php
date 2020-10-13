<?php
//lich sử đặt hàng
use \Firebase\JWT\JWT;
require __DIR__ . '/vendor/autoload.php';
include('function.php');
include('connect/connect.php');


try{
	$sqlstt = "SELECT * FROM product";
	$result = $mysqli->query($sqlstt);
	while ($row = $result->fetch_object()){
		$pets[] = $row;
	}
	print_r(json_encode($pets)); 
}

catch(Exception $e){
	echo 'LOI';
}


?>