<?php
// definições de host, database, usuário e senha
$host = "127.0.0.1";
$db   = "test3";
$user = "root";
$pass = "";
// conecta ao banco de dados
$con = mysql_pconnect($host, $user, $pass) or trigger_error(mysql_error(),E_USER_ERROR);
// seleciona a base de dados em que vamos trabalhar
mysql_select_db($db, $con);
// cria a instrução SQL que vai selecionar os dados
$query = sprintf("SELECT id, name, phone, combo, uf, city FROM dialer");
// executa a query
$dados = mysql_query($query, $con) or die(mysql_error());
// transforma os dados em um array
$linha = mysql_fetch_assoc($dados);
// calcula quantos dados retornaram
$total = mysql_num_rows($dados);
?>

<html>
	<head>
	 <link href="estilos.css" rel="stylesheet" type="text/css">
	<title>Resultados</title>
	</head>
<body>
<h2> <center> Resultado da busca</h2>

<?php
	// se o número de resultados for maior que zero, mostra os dados
	if($total > 0) {
		// inicia o loop que vai mostrar todos os dados
		do {
?>
			<p>
			<table>
			<tr>
			<td align=center><h3>  </h3>
			
			Nome: <?=$linha['name']?> <br>
			Phone: <?=$linha['phone']?><br>
			Combo: <?=$linha['combo']?> <br>
			<?=$linha['city']?> - <?=$linha['uf']?>
			</td></tr>
			</table>
			</p>
<?php
		// finaliza o loop que vai mostrar os dados
		}while($linha = mysql_fetch_assoc($dados));
	// fim do if
	}
?>
</body>
</html>
<?php
// tira o resultado da busca da memória
mysql_free_result($dados);
?>