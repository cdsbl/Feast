var labels = document.getElementById("chartData").getAttribute("data-labels").split(",");
var data = document.getElementById("chartData").getAttribute("data-data").split(",");
var ctx = document.getElementById("totals").getContext('2d');
var myPieChart = new Chart(ctx,{
    type: 'pie',
  data: {
         labels: labels,
         datasets: [{
             label: 'totals',
             data: data,
             backgroundColor: [
                 'rgb(0, 255, 255)',
                 'rgb(255, 255, 26)',
                 'rgb(191, 0, 255)'
                 ],
             borderColor: [
                 'rgb(0, 0, 0)',
                 'rgb(0, 0, 0)',
                 'rgb(0, 0, 0)'
                 ],
             borderWidth: 1
         }]
 },

 });



//options: options
































































/*var myPieChart = new Chart(ctx,{
    type: 'pie',
  data: {
         labels: labels,
         datasets: [{
             label: 'totals',
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
 options: options
});*/

