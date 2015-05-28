function draw_chartist_line(study_sessions){
  var labels_blanck = study_sessions.map(function(study_session){return  "";});

  new Chartist.Line('#chart_line', {
    labels: labels_blanck,
    series: [
      study_sessions
    ]
  }, {
    fullWidth: true,
    chartPadding: {
      right: 40
    }
  });
}