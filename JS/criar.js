//AJAX chama uma página que registra o usuário
//Se sign in for sucedido redireciona o usuário para main.php
function registrar(name, password, type) {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function () {
    if (this.readyState == 4 && this.status == 200) { //this = xhttp
      if (this.responseText == "") {
        window.location.href = 'main.php';
      } else {
        document.getElementById("result").innerHTML = this.responseText; //Mensagem de erro
      }
    }
  };
  xhttp.open("POST", "PHP/login-register.php?n=" + name + "&p=" + password + "&t=" + type, true);
  xhttp.send();
}

//Detecta quando usuário der submit no form de sign in
document.getElementById('submitR').addEventListener('submit', function () {
  var name = document.getElementById('nameR').value;
  var password = document.getElementById('passwordR').value;
  registrar(name, password, 'r');
  event.preventDefault(); //Impede submit do form
});