  $.getJSON(document.URL, function (data) {
      draw_chartist_pie(data.study_percent);
      draw_chartist_line_study_sessions(data.study_sessions);
  });