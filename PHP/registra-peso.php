<?php
session_start();
$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "historico_massa";

$peso = $_REQUEST["p"];
$data = date("Y-m-d");
$usuario = $_SESSION['usuario'];

$conexao = mysqli_connect($servername, $username, $password, $dbname)or die("Erro");

$sql = "SELECT cd_usuario FROM usuarios WHERE em_usuario = '$usuario'";
$resultado = mysqli_query($conexao, $sql)or die("Erro");
$linha = mysqli_fetch_assoc($resultado);
$cdUsuario = $linha['cd_usuario'];

$sql = "INSERT INTO massas(vl_massa, dt_massa, usuario_cd_usuario) VALUES ($peso, '$data', $cdUsuario)";

$resultado = mysqli_query($conexao, $sql)or die("Erro");

mysqli_close($conexao);