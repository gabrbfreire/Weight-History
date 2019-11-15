<?php
session_start();
include 'conexao.php';

$peso = $_REQUEST["p"];
$data = date("Y-m-d");

//Obtem codigo do usuário
$usuarioId = $_SESSION['usuarioId'];

//Adiciona novo dado 
$conexao = mysqli_connect($servername, $username, $password, $dbname)or die("Erro");
$sql = "CALL AdicionaDadoUsuario($peso, '$data', $usuarioId)";
$resultado = mysqli_query($conexao, $sql)or die("Erro");

mysqli_close($conexao);