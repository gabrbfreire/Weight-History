//Pega id do botão para alterar peso
function obtemIdAlterar() {
  id = this.id.slice(1);
  document.getElementById("input-peso-alterar").focus();
}


document.getElementById("btn-alterar").addEventListener("click", clickAlterar);


//UPDATE
function clickAlterar() {
  var novoPeso = document.getElementById("input-peso-alterar").value;
  if (novoPeso >= 30) {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
      if (this.readyState == 4 && this.status == 200) {
        //this = xhttp
        if (this.responseText == "") {
          location.reload();
        }
      }
    };

    //Passa id e novo peso para PHP
    xhttp.open("POST", "PHP/alterar.php?id=" + id + "&peso=" + novoPeso, true);
    xhttp.send();
  }
}
