<?php
session_start();
include 'conexao.php';

$codigo = $_REQUEST["id"];

$sql = "CALL DeletaDado($codigo)";

$resultado = mysqli_query($conexao, $sql)or die("Erro");