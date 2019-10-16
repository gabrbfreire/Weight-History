//Cria os arrays que serão usados no gráfico 
var datas = [];
var pesos = [];

//Gera o gráfico quando a página for carregada
window.addEventListener('load', function () {
  criaArraysDatasPesos();
});


//Cria o grafico, utilizando a biblioteca Chart.js, com os dados obtidos do banco
function grafico() {
  console.log(datas, pesos);
  var ctx = document.getElementById('myChart');
  var myChart = new Chart(ctx, {
    type: 'line',
    data: {
      labels: datas,
      datasets: [{
        fill: false,
        backgroundColor: 'Orange',
        borderColor: 'Orange',
        label: 'Peso',
        data: pesos,
        borderWidth: 4,
        lineTension: .01
      }]
    },
    options: {
      scales: {
        yAxes: [{
          ticks: {
            suggestedMin: 30
          }
        }]
      }
    }
  });
}

//Quando o usuário clicar em sair AJAX chama uma pagina que limpa a superglobal SESSION terminando a seção do usuário
document.getElementById('anchor-sair').addEventListener('click', function () {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function () {
    if (this.readyState == 4 && this.status == 200) { //this = xhttp
      if (this.responseText == "") {
        window.location.href = 'index.html';
      }
    }
  };
  xhttp.open("POST", "PHP/sair.php", true);
  xhttp.send();
});

//AJAX obtem os dados do banco e preenche dois arrays que serão usados na geração do gráfico
function criaArraysDatasPesos() {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function () {
    if (this.readyState == 4 && this.status == 200) { //this = xhttp

      var dados = JSON.parse(this.responseText);

      for (var len in dados) {
        var peso = 'dados.' + len + '.massa';
        var data = 'dados.' + len + '.data';

        datas.push(eval(data));
        pesos.push(eval(peso));
      }
      grafico();
      criaTabela(dados);
    }
  }
  xhttp.open("POST", "PHP/plota.php", true);
  xhttp.send();
}

//Novo peso inserido pelo usuário é enviado atráves do AJAX para uma pagina onde é feito seu INSERT
//Cria nova tabela com dados inseridos
function registraPeso(peso) {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function () {
    if (this.readyState == 4 && this.status == 200) { //this = xhttp
      document.getElementById("result").innerHTML = this.responseText;
      criaArraysDatasPesos();
      location.reload();
    }
  };
  xhttp.open("POST", "PHP/registra-peso.php?p=" + peso, true);
  xhttp.send();
}

//Detecta se usuário deu submit no form de adicionar peso
document.getElementById('submitW').addEventListener('submit', function () {
  var peso = document.getElementById('peso').value;
  registraPeso(peso);
  event.preventDefault(); //Impede submit do form
});

var x = document.createElement('asd');

function criaTabela(dados) {
  for (var len in dados) {
    var codigo = 'dados.' + len + '.codigo';
    var data = 'dados.' + len + '.data';
    var massa = 'dados.' + len + '.massa';

    var row = table.insertRow();

    var cell1 = row.insertCell(0);
    var x = document.createElement('asd');
    x.innerHTML = eval(data);
    cell1.appendChild(x);

    var cell2 = row.insertCell(1);
    var x = document.createElement('asd');
    x.innerHTML = eval(massa);
    cell2.appendChild(x);

    var cell3 = row.insertCell(2);
    var x = document.createElement('button');
    x.innerHTML = '<i class="far fa-edit" id="a' + eval(codigo) + '"></i>';
    cell3.appendChild(x);

    document.getElementById('a' + eval(codigo) + '').addEventListener('click', clickAlterar);

    var cell4 = row.insertCell(3);
    var x = document.createElement('button');
    x.innerHTML = '<i class="fas fa-times" id="d' + eval(codigo) + '"></i>';
    cell4.appendChild(x);

    document.getElementById('d' + eval(codigo) + '').addEventListener('click', clickExcluir);
  }
}

function clickAlterar() {
  var novoPeso = prompt('Novo peso:', '');
  console.log(novoPeso);

  var id = this.id.slice(1);

  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function () {
    if (this.readyState == 4 && this.status == 200) { //this = xhttp
      if (this.responseText == "") {
        location.reload();
      }
    }
  };
  xhttp.open("POST", "PHP/alterar.php?id=" + id + "&peso=" + novoPeso, true);
  xhttp.send();
}

function clickExcluir() {
  var id = this.id.slice(1);

  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function () {
    if (this.readyState == 4 && this.status == 200) { //this = xhttp
      if (this.responseText == "") {
        location.reload();
      }
    }
  };
  xhttp.open("POST", "PHP/deletar.php?id=" + id, true);
  xhttp.send();
}