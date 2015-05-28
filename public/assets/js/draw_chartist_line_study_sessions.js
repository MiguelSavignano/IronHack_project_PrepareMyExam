function draw_chartist_line_study_sessions(study_sessions){
  var  study_sessions_minutes =  study_sessions.map(function(study_session){return  study_session.minutes;});
  var  study_sessions_labels_blank =  study_sessions.map(function(study_session){return  "";});
   new Chartist.Line('.ct-chart', {
     labels: study_sessions_labels_blank,
     series: [
       study_sessions_minutes
     ]
   }, {
     fullWidth: true,
     chartPadding: {
       right: 40
     }
   });
};