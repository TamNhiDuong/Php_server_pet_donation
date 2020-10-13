<?php
//mysql://b163e03e5f704b:a9567227@eu-cdbr-west-03.cleardb.net/heroku_1bf375f05667e00?reconnect=true
//$mysqli = mysqli_connect("localhost", "root", "", "db_app");
$mysqli = mysqli_connect("eu-cdbr-west-03.cleardb.net", "b163e03e5f704b", "a9567227", "heroku_1bf375f05667e00");
$mysqli->set_charset("utf8");
if (mysqli_connect_errno()) {
    printf("Connect failed: %s\n", mysqli_connect_error());
    exit();
}

?>