  $( document ).ready(function() {
    Materialize.showStaggeredListY('#staggered-test')
  });

  Materialize.showStaggeredListY = function(selector) {
    var time = 0;
    $(selector).find('li').velocity(
        { translateY: "20px"},
        { duration: 0 });

    $(selector).find('li').each(function() {
      $(this).velocity(
        { opacity: "1", translateY: "0"},
        { duration: 800, delay: time, easing: [60, 10] });
      time += 120;
    });
  };