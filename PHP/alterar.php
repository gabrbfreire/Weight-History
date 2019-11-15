<?php
session_start();
include 'conexao.php';

$codigo = $_REQUEST["id"];
$peso = $_REQUEST["peso"];

$sql = "CALL AlteraDado($codigo, $peso)";

$resultado = mysqli_query($conexao, $sql)or die("Erro");