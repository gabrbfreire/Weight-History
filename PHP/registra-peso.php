<?php
session_start();
$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "historico_massa";

$peso = $_REQUEST["p"];
$data = date("Y-m-d");
$usuario = $_SESSION['usuario'];

//Obtem codigo do usuário
$conexao = mysqli_connect($servername, $username, $password, $dbname)or die("Erro");
$sql = "CALL SelecionaCdUsuario('$usuario')";
$resultado = mysqli_query($conexao, $sql)or die("Erro");
$linha = mysqli_fetch_assoc($resultado);
$cdUsuario = $linha['cd_usuario'];
mysqli_close($conexao);

//Adiciona novo dado 
$conexao = mysqli_connect($servername, $username, $password, $dbname)or die("Erro");
$sql = "CALL AdicionaDadoUsuario($peso, '$data', $cdUsuario)";
$resultado = mysqli_query($conexao, $sql)or die("Erro");

mysqli_close($conexao);