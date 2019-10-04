<?php
$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "users";

$name = $_REQUEST["n"];
$userPassword = $_REQUEST["p"];
$type = $_REQUEST["t"];

$connect = mysqli_connect($servername, $username, $password, $dbname)or die("Error");
$sql = "SELECT * FROM users WHERE nm_user = '$name'";

$result = mysqli_query($connect, $sql)or die("Erro");
$resultLine = mysqli_fetch_assoc($result);

if($type == 'r'){ //Register
    if($resultLine['nm_user'] == $name){ //Se usuário existir impede registro
        $textResult = "Usuário já existe";
    }else{
        $sql = "INSERT INTO users (nm_user, pw_user) VALUES ('$name', '$userPassword')";

        $result = mysqli_query($connect, $sql)or die("Error");
    
        $textResult = "Registrado com sucesso";
    }
}else{ //Login  
    if($resultLine['nm_user'] == $name && $resultLine['pw_user'] == $userPassword){
        $textResult = "Login feito com sucesso";
    }else{
        $textResult = "Nome ou senha errados";
    }
}
mysqli_close($connect);

echo $textResult;