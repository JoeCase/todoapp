$(document).ready(function() {



  $('.new-task-button').on('click', function(event) {
      event.preventDefault();
      $('.new-task-form-container').css('display','block');
   }) // End of new-task-button click event show


 $('.new-task-form').on('submit', function(event){
          event.preventDefault();

          var formParams = { type: "POST",
                              url: "/tasks",
                              data: $(this).serialize()
                            };

          $.ajax(formParams).done(function(response) {

              $('#task-list-ul').prepend(response);

              $( ".new-task-form-container" ).slideUp( "slow", function() {
                $('.new-task-form').trigger("reset");

              });



          });

        }); // End of new-task-form ajax send and cimmut


  $('.list-item-link').on('click', function(event) {

      event.preventDefault();
      $('.task-details').css('display','none');
      $(this).siblings('.task-details').css('display','block');

  }) // End of list-item-link event


  $(function() {
    $( "#datepicker" ).datepicker();
  });

});
