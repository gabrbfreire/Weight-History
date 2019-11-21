//DELETE
//Remove dado
function clickExcluir() {
  //Pega id do icone para excluir peso
  var id = this.id.slice(1);

  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function () {
    if (this.readyState == 4 && this.status == 200) {
      //this = xhttp
      if (this.responseText == "") {
        location.reload();
      }
    }
  };

  //Passa id para PHP
  xhttp.open("POST", "PHP/deletar.php?id=" + id, true);
  xhttp.send();
}
