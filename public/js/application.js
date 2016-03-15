$(document).ready(function() {

  $('.item-list').on('click','.list-item-link', function(event) {
      event.preventDefault();
      $(this).siblings('.task-details').slideToggle(200);
   }) // End of list-item-link event


  $('.new-task-button').on('click', function(event) {
      event.preventDefault();
       $('.new-task-form-container').slideToggle(200);
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


  $(function() {
    $( "#datepicker" ).datepicker();
  });

});
