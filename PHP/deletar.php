<?php
session_start();
$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "historico_massa";

$codigo = $_REQUEST["id"];

$conexao = mysqli_connect($servername, $username, $password, $dbname)or die("Erro");

$sql = "CALL DeletaDado($codigo)";

$resultado = mysqli_query($conexao, $sql)or die("Erro");