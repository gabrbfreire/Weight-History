<?php
session_start();
$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "historico_massa";

$usuario = $_SESSION['usuario'];

//Obtem codigo do usuário
$conexao = mysqli_connect($servername, $username, $password, $dbname)or die("Erro");
$sql = "CALL SelecionaCdUsuario('$usuario')";
$resultado = mysqli_query($conexao, $sql)or die("Erro");
$linha = mysqli_fetch_assoc($resultado);
$cdUsuario = $linha['cd_usuario'];
mysqli_close($conexao);

//Obtem registros do usuário
$conexao = mysqli_connect($servername, $username, $password, $dbname)or die("Erro");
$sql = "CALL SelecionaDadosUsuario('$cdUsuario')";
$resultado = mysqli_query($conexao, $sql)or die("Erro");

$i = 0;
$colunas = mysqli_num_rows($resultado);

//Cria JSON com dados obtidos
echo '{';
    for ($i; $i <$colunas ; $i++) {
        if (mysqli_data_seek($resultado, $i)){
            $linha = mysqli_fetch_assoc($resultado);
            $data = date("d-m-Y", strtotime($linha['dt_massa']));
            $num = $i + 1;
            echo '"massas'.$num.'":{"massa":"'.$linha['vl_massa'].'", "data":"'.$data.'"}';
            if($i != $colunas-1){
                echo ',';
            }
        }
    }
echo '}';
mysqli_close($conexao);