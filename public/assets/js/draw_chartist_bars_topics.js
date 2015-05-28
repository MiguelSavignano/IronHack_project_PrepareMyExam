function draw_chartist_bars_topics(topics){
    var  topics_minutes =  topics.map(function(topic){return  topic.minutes;});
    var  topics_descriptions =  topics.map(function(topic){return  topic.description;});
    var chart = new Chartist.Bar('.ct-chart', {
       labels:  topics_descriptions,
        series: [
         topics_minutes
        ]
       }, {
       seriesBarDistance: 10,
       reverseData: true,
       horizontalBars: true,
       axisY: {
         offset: 70
       }
    });

    chart.on('draw', function(data) {
      if(data.type === 'bar') {
        data.element.animate({
          x2: {
            id: 'grow',
            dur: 2000,
            from: data.x1,
            to: data.x2,
            easing: Chartist.Svg.Easing.easeOutQuint
          }
        }, false);
      }
    });
}