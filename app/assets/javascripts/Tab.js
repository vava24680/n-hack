/* tab jQurey */

$(document).ready(function(){
   $('.tab').not(':first').hide();
   $('.tab:first').show()  
   $('#tabs li a:first').addClass('active');
   $('ul#tabs li a').click(function() {
      $('ul#tabs li a').removeClass('active');
      $(".tab:visible").hide();
      var index = $('ul#tabs li a').index(this);
      $(".tab:eq(" + index + ")").fadeIn('slow');
      $(this).addClass('active');
      return false; // this.preventDefault()
   });
});
