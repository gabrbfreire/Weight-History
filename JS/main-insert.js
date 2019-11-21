//INSERT
//Detecta se usuário deu submit no form de adicionar peso
document.getElementById("submitW").addEventListener("submit", function () {
  var peso = document.getElementById("peso").value;
  registraPeso(peso);
  event.preventDefault(); //Impede submit do form
});


//Novo peso inserido pelo usuário é enviado atráves do AJAX para uma pagina onde é feito seu INSERT
function registraPeso(peso) {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function () {
    if (this.readyState == 4 && this.status == 200) {
      //this = xhttp
      document.getElementById("result").innerHTML = this.responseText;

      //Cria uma nova tabela e gráfico com dados inseridos
      location.reload();
    }
  };
  xhttp.open("POST", "PHP/registra-peso.php?p=" + peso, true);
  xhttp.send();
}

