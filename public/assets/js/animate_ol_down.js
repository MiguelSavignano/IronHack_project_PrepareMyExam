  $( document ).ready(function() {
    Materialize.showStaggeredListY('#staggered-test')
  });

  Materialize.showStaggeredListY = function(selector) {
    var time = 0;
    $(selector).find('ol').velocity(
        { translateY: "-30px"},
        { duration: 2 });

    $(selector).find('ol').each(function() {
      $(this).velocity(
        { opacity: "1", translateY: "0"},
        { duration: 800, delay: time, easing: [80, 10] });
      time += 120;
    });
  };