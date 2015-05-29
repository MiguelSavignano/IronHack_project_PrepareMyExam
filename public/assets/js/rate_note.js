 function rate_note (note_id) {
    // body...
    $.ajax({
        url: '/note/'+note_id+'/rate/',
        type: 'post',
  beforeSend: function(xhr) {xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))},

        data: {"id":note_id},
        success: function (data) {
          console.log("OKK");
        }
      });
  } 