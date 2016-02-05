// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery-ui
//= require bootstrap-sprockets
//= require rails.validations
//= require rails.validations.simple_form 
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function () {

	setTimeout(function(){
		$('.alert').fadeOut("slow", function(){
			$(this).remove();
		})
	},3000);

  $('.navbar-toggle').click(function () {
        $('.navbar-nav').toggleClass('slide-in');
        $('.side-body').toggleClass('body-slide-in');
        $('#search').removeClass('in').addClass('collapse').slideUp(200);
        
    });
   
   $('#search-trigger').click(function () {
        $('.navbar-nav').removeClass('slide-in');
        $('.side-body').removeClass('body-slide-in');

    });

   $('#toggle_completed_items').hide();
   $('#completed_items').click(function(){
      $('#toggle_completed_items').fadeToggle("slow");
   });

   $('.datepicker').datepicker({ dateFormat: 'dd-mm-yy' })
      .on('changeDate', function(ev){
        $(ev.target).find('input').change().focusout();
      });

      $('#myModal').on('shown.bs.modal', function () { $(ClientSideValidations.selectors.forms).validate(); });
})
