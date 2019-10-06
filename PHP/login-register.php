<?php
session_start();
$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "historico_massa";

$email = $_REQUEST["n"];
$senhaUsuario = $_REQUEST["p"];
$tipo = $_REQUEST["t"];

$conexao = mysqli_connect($servername, $username, $password, $dbname)or die("Erro");
$sql = "SELECT * FROM usuarios WHERE em_usuario = '$email'";

$resultado = mysqli_query($conexao, $sql)or die("Erro");
$resultadoLinha = mysqli_fetch_assoc($resultado);

if($tipo == 'r'){ //Sign In
    if($resultadoLinha['em_usuario'] == $email){ //Se usuário existir impede registro
        $textoResultado = "Usuário já existe";
    }else{
        $hash = password_hash($senhaUsuario, PASSWORD_DEFAULT); //Cria hash
        $sql = "INSERT INTO usuarios (em_usuario, pw_usuario) VALUES ('$email', '$hash')";

        $resultado = mysqli_query($conexao, $sql)or die("Erro");
    
        $textoResultado = "";
        $_SESSION['usuario'] = $email;
    }
}else{ //Login  
    if($resultadoLinha['em_usuario'] == $email && password_verify($senhaUsuario, $resultadoLinha['pw_usuario']) == 1){
        $textoResultado = "";
        $_SESSION['usuario'] = $email;
    }else{
        $textoResultado = "Usuário ou Senha inválidos";
    }
}
mysqli_close($conexao);

echo $textoResultado;