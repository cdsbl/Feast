var labels = document.getElementById("chartData").getAttribute("data-labels").split(",");
var data = document.getElementById("chartData").getAttribute("data-data").split(",");
var ctx = document.getElementById("regulation").getContext('2d');
var myChart = new Chart(ctx, {
   type: 'bar',
   data: {
       labels: labels,
       datasets: [{
           label: 'Level',
           data: data,
           backgroundColor: [
               'rgba(255, 99, 132, 0.2)',
               'rgba(54, 162, 235, 0.2)',
               'rgba(255, 206, 86, 0.2)',
               ],
           borderColor: [
               'rgba(255,99,132,1)',
               'rgba(54, 162, 235, 1)',
               'rgba(255, 206, 86, 1)',
               ],
           borderWidth: 1
       }]
   },
   options: {
       scales: {
           yAxes: [{
               ticks: {
                   beginAtZero:true
               }
           }]
       }
   }
});