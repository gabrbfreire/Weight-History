//Quando o usuário clicar em sair AJAX chama uma pagina PHP que limpa a superglobal SESSION terminando a seção do usuário
document.getElementById("anchor-sair").addEventListener("click", function () {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function () {
    if (this.readyState == 4 && this.status == 200) {
      //this = xhttp
      if (this.responseText == "") {
        window.location.href = "index.html";
      }
    }
  };
  xhttp.open("POST", "PHP/sair.php", true);
  xhttp.send();
});
