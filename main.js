var ctx = document.getElementById('myChart');
var myChart = new Chart(ctx, {
  type: 'line',
  data: {
    labels: ['Data1', 'Data2', 'Data3', 'Data4', 'Data5', 'Data6', '', ''],
    datasets: [{
      fill: false,
      backgroundColor: 'Orange',
      borderColor: 'Orange',
      label: 'Peso',
      data: [12, 15, 19, 10, 32, 3, 5, 2, 3],
      borderWidth: 4,
      lineTension: .01
    }]
  },
  options: {
    scales: {
      yAxes: [{
        ticks: {
          beginAtZero: true
        }
      }]
    }
  }
});