<?php
 // Conectando ao banco de dados:
 include_once("conectar.php");
 
 // Recebendo os dados a pesquisar
 $pesquisa = $_POST['combo'];
?>

 <html>
 <head>
 <link href="estilos.css" rel="stylesheet" type="text/css">
 <title>Resultado da pesquisa</title>
 </head>
 <body>
 
 <!-- Preenchendo a tabela com os dados do banco: -->
 <?php
 $sql = "SELECT * FROM dialer WHERE combo = '$pesquisa'";
 $resultado = mysqli_query($strcon,$sql) or die("Erro ao retornar dados");
 
 // Obtendo os dados por meio de um loop while
 while ($registro = mysqli_fetch_array($resultado))
 {
   $name = $registro['name'];
   $phone = $registro['phone'];
   $combo = $registro['combo'];
   $uf = $registro['uf'];
   $city = $registro['city'];
   echo "<tr>";
   echo "<td>".$name."</td>";
   echo "<td>".$phone."</td>";
   echo "<td>".$combo."</td>";
   echo "<td>".$uf."</td>";
   echo "<td>".$city."</td>";
   echo "</tr>";
 }
 mysqli_close($strcon);
 echo "</table>";
?>
</body>
</html>