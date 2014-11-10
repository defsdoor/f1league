var everyPage = function() {
   bootcards.init( {
    offCanvasBackdrop : true,
    offCanvasHideOnMainClick : true,
    enableTabletPortraitMode : true,
    disableRubberBanding : true
   } );

   $('input.observed').observe_field(0.3, function() {
      $(this).trigger('change.rails');
      $(this).keypress(function(event) { return event.keyCode != 13; });
   });

   $('.infinite-scrolling').each(function() {
      var paginator = $($(this).data('paginator'));
      paginator.hide();
      if ($(this).size() > 0) {
         $(this).on('scroll', function() {
            var more_posts_url = paginator.find('.pagination a[rel=next]').attr('href');
            var bottom = $(this).outerHeight() - ($(this)[0].scrollHeight - $(this).scrollTop() );
            if (more_posts_url && bottom >= 0) {
               $(this).find('.more .alert').html('<i class="fa fa-spinner fa-lg fa-spin"></i>');
               $.getScript(more_posts_url);
            }
         });
      }
   });

};

$(document).on('page:change', everyPage);
