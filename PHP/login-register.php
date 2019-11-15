<?php
session_start();
//Conexão ao servidor
include 'conexao.php';


$email = filter_var($_REQUEST["n"], FILTER_SANITIZE_EMAIL);
$senhaUsuario = filter_var($_REQUEST["p"], FILTER_SANITIZE_STRING);
$tipo = $_REQUEST["t"];


//Chama procedure de Log In
$sql = "CALL LogIn('$email');";
$resultado = mysqli_query($conexao, $sql)or die("Erro");
$resultadoLinha = mysqli_fetch_assoc($resultado);

//Sign In
if($tipo == 'r'){ 
    //Se usuário existir impede registro
    if($resultadoLinha['em_usuario'] == $email){ 
        $textoResultado = "Usuário já existe";
    }else{ //Registro
        mysqli_close($conexao);
        $conexao = mysqli_connect($servername, $username, $password, $dbname)or die("Erro");

        $hash = password_hash($senhaUsuario, PASSWORD_DEFAULT); //Cria hash
        $sql = "CALL SignIn('$email', '$hash');"; //Chama procedure de Sign In

        $resultado = mysqli_query($conexao, $sql)or die("Erro");
    
        $textoResultado = "";
        $_SESSION['usuario'] = $email;
    }
    mysqli_close($conexao);
}else{ 
    //Se for tipo l
    //Login  
    if($resultadoLinha['em_usuario'] == $email && password_verify($senhaUsuario, $resultadoLinha['pw_usuario']) == 1){
        $textoResultado = "";
        $_SESSION['usuarioEmail'] = $email;
        $_SESSION['usuarioId'] = $resultadoLinha['cd_usuario'];
    }else{
        $textoResultado = "Usuário ou Senha inválidos";
    }
    mysqli_close($conexao);
}

echo $textoResultado;