var labels = document.getElementById("chartData").getAttribute("data-labels").split(",");
var data = document.getElementById("chartData").getAttribute("data-data").split(",");
var ctx = document.getElementById("totals").getContext('2d');
var randomScalingFactor = function() {
			return Math.round(Math.random() * 100);
		};

		var config = {
			type: 'pie',
			data: {
				datasets: [{
					data: [
						randomScalingFactor(),
						randomScalingFactor(),
						randomScalingFactor()

					],
					backgroundColor: [
						window.chartColors.red,
						window.chartColors.yellow,
						window.chartColors.blue
					],
					label: 'Dataset 1'
				}],
				labels: [
					'People',
					'Process',
					'Place'
					]
			},
			options: {
				responsive: true
			}
		};

		window.onload = function() {
			var ctx = document.getElementById('totals').getContext('2d');
			window.myPie = new Chart(ctx, config);
		};



		document.getElementById('totals').addEventListener('click', function() {
			config.data.datasets.forEach(function(dataset) {
				dataset.data = dataset.data.map(function() {
					return randomScalingFactor();
				});
			});

			window.myPie.update();

		});



		/*var colorNames = Object.keys(window.chartColors);
		document.getElementById('totals').addEventListener('click', function() {
			var newDataset = {
				backgroundColor: [],
				data: [],
				label: 'totals ' + config.data.datasets.length,
			};

			for (var index = 0; index < config.data.labels.length; ++index) {
				newDataset.data.push(randomScalingFactor());

				var colorName = colorNames[index % colorNames.length];
				var newColor = window.chartColors[colorName];
				newDataset.backgroundColor.push(newColor);
			}

			config.data.datasets.push(newDataset);
			window.myPie.update();
		});*/

		document.getElementById('totals').addEventListener('click', function() {
			config.data.datasets.splice(0, 1);
			window.myPie.update();
		});











































































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

