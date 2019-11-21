//Cria os arrays que serão usados no gráfico
var datas = [];
var pesos = [];

var id = 0;

//Gera o gráfico quando a página for carregada
window.addEventListener("load", function () {
  carregaDados();
  document.getElementById("peso").focus();
});