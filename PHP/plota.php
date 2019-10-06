<?php
session_start();
$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "historico_massa";

$usuario = $_SESSION['usuario'];

//Obtem codigo do usuário
$conexao = mysqli_connect($servername, $username, $password, $dbname)or die("Erro");
$sql = "SELECT cd_usuario FROM usuarios WHERE em_usuario = '$usuario'";
$resultado = mysqli_query($conexao, $sql)or die("Erro");
$linha = mysqli_fetch_assoc($resultado);
$cdUsuario = $linha['cd_usuario'];

$sql = "SELECT * FROM massas WHERE usuario_cd_usuario = $cdUsuario"; ////////////

$resultado = mysqli_query($conexao, $sql)or die("Erro");

$i = 0;
$colunas = mysqli_num_rows($resultado);

//Cria JSON com massa e data
echo '{';
    for ($i; $i <$colunas ; $i++) {
        if (mysqli_data_seek($resultado, $i)){
            $linha = mysqli_fetch_assoc($resultado);
            $num = $i + 1;
            echo '"massas'.$num.'":{"massa":"'.$linha['vl_massa'].'", "data":"'.$linha['dt_massa'].'"}';
            if($i != $colunas-1){
                echo ',';
            }
        }
    }
echo '}';
mysqli_close($conexao);