<? php
 /* Dados do Banco de Dados a conectar */
$host = "localhost";
$db   = "test3";
$user = "root";
$pass = "";

$con = mysql_pconnect($host, $user, $pass) or trigger_error(mysql_error(),E_USER_ERROR);
?>