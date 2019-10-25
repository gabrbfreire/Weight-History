//AJAX chama uma página que inicia a seção do usuário
//Se login for sucedido redireciona o usuário para main.php
function login(name, password, type) {
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

//Detecta quando usuário der submit no form de login
document.getElementById('submitL').addEventListener('submit', function () {
  var name = document.getElementById('nameL').value;
  var password = document.getElementById('passwordL').value;
  login(name, password, 'l');
  event.preventDefault(); //Impede que o submit do form recarregue a página
});