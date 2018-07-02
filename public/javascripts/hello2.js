
<script>
window.onload = function () {

var chart = new CanvasJS.Chart("totals", {
	exportEnabled: true,
	animationEnabled: true,
	title:{
		text: "Violations by Control Point Areas"
	},
	legend:{
		cursor: "pointer",
		itemclick: explodePie
	},
	data: [{
		type: "pie",
		showInLegend: true,
		toolTipContent: "{name}: <strong>{y}%</strong>",
		indexLabel: "{name} - {y}%",
		dataPoints: [
			{ y: ,peopleCount, name: "People", exploded: true },
			{ y: ,processCount, name: "Process" },
			{ y: ,placeCount, name: "Place" }

		]
	}]
});
chart.render();
}

function explodePie (e) {
	if(typeof (e.dataSeries.dataPoints[e.dataPointIndex].exploded) === "undefined" || !e.dataSeries.dataPoints[e.dataPointIndex].exploded) {
		e.dataSeries.dataPoints[e.dataPointIndex].exploded = true;
	} else {
		e.dataSeries.dataPoints[e.dataPointIndex].exploded = false;
	}
	e.chart.render();

}
</script>
