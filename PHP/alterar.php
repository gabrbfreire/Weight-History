<?php
session_start();
$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "historico_massa";

$codigo = $_REQUEST["id"];
$peso = $_REQUEST["peso"];

$conexao = mysqli_connect($servername, $username, $password, $dbname)or die("Erro");

$sql = "CALL AlteraDado($codigo, $peso)";

$resultado = mysqli_query($conexao, $sql)or die("Erro");