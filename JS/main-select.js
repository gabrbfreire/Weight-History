//SELECT
//Obtem os dados do banco e preenche dois arrays que serão usados na geração do gráfico
function carregaDados() {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function () {
    if (this.readyState == 4 && this.status == 200) {
      //this = xhttp

      var dados = JSON.parse(this.responseText);
      for (var len in dados) {
        var peso = "dados." + len + ".massa";
        var data = "dados." + len + ".data";

        datas.push(eval(data));
        pesos.push(eval(peso));
      }
      criaGrafico();
      criaTabela(dados);
    }
  };
  xhttp.open("POST", "PHP/plota.php", true);
  xhttp.send();
}


function criaTabela(dados) {
  for (var len in dados) {
    var codigo = "dados." + len + ".codigo";
    var data = "dados." + len + ".data";
    var massa = "dados." + len + ".massa";

    var row = table.insertRow();

    var cell1 = row.insertCell(0);
    var elemento = document.createElement("asd");
    elemento.innerHTML = eval(data);
    cell1.appendChild(elemento);

    var cell2 = row.insertCell(1);
    var elemento = document.createElement("asd");
    elemento.innerHTML = eval(massa);
    cell2.appendChild(elemento);


    //Icone alterar
    var cell3 = row.insertCell(2);
    var elemento = document.createElement("button");
    //Adiciona id do dado ao botão
    elemento.innerHTML =
      '<i class="far fa-edit" data-toggle="modal" data-target="#exampleModal" id="a' +
      eval(codigo) +
      '"></i>';
    cell3.appendChild(elemento);

    document
      .getElementById("a" + eval(codigo) + "")
      .addEventListener("click", obtemIdAlterar);

    //Icone excluir  
    var cell4 = row.insertCell(3);
    var elemento = document.createElement("button");
    //Adiciona id do dado ao botão
    elemento.innerHTML = '<i class="fas fa-times" id="d' + eval(codigo) + '"></i>';
    cell4.appendChild(elemento);

    document
      .getElementById("d" + eval(codigo) + "")
      .addEventListener("click", clickExcluir);
  }
}


//Cria o criaGrafico, utilizando a biblioteca Chart.js, com os dados obtidos do banco
function criaGrafico() {
  var ctx = document.getElementById("myChart");
  var myChart = new Chart(ctx, {
    type: "line",
    data: {
      labels: datas, ////datas Eixo X
      datasets: [
        {
          fill: false,
          backgroundColor: "Orange",
          borderColor: "Orange",
          label: "Peso",
          data: pesos, ////pesos Eixo Y
          borderWidth: 4,
          lineTension: 0.01
        }
      ]
    },
    options: {
      responsive: true,
      maintainAspectRatio: false,
      scales: {
        yAxes: [
          {
            ticks: {
              suggestedMin: 30
            }
          }
        ]
      }
    }
  });
}

