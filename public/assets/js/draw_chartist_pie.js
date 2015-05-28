function draw_chartist_pie(study_percent){
   new Chartist.Pie('#chart_pie', {
    series: [study_percent]
  }, {
    donut: false,
    donutWidth: 40,
    startAngle: 270,
    total: 100,
    showLabel: true
  });
}