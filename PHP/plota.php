<?php
session_start();
include 'conexao.php';

//Obtem codigo do usuário
$usuarioId = $_SESSION['usuarioId'];

//Obtem registros do usuário
$sql = "CALL SelecionaDadosUsuario('$usuarioId')";
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
            echo '"massas'.$num.'":{"codigo":"'.$linha['cd_massa'].'", "massa":"'.$linha['vl_massa'].'", "data":"'.$data.'"}';
            if($i != $colunas-1){
                echo ',';
            }
        }
    }
echo '}';
mysqli_close($conexao);