<?php
session_start();
include 'conexao.php';

$peso = $_REQUEST["p"];
$data = date("Y-m-d");

//Obtém código do usuário
$usuarioId = $_SESSION['usuarioId'];

//Adiciona novo dado 
$sql = "CALL AdicionaDadoUsuario($peso, '$data', $usuarioId)";
$resultado = mysqli_query($conexao, $sql)or die("Erro");

mysqli_close($conexao);