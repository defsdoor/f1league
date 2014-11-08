var everyPage = function() {
   bootcards.init( {
    offCanvasBackdrop : true,
    offCanvasHideOnMainClick : true,
    enableTabletPortraitMode : true,
    disableRubberBanding : true
   } );

   $('input.observed').observe_field(1, function() {
      $(this).trigger('change.rails');
   });

   $('.infinite-scrolling').each(function() {
       var paginator = $($(this).data('paginator'));
       paginator.hide();
   if ($(this).size() > 0) {
     $(this).on('scroll', function() {
       var more_posts_url = paginator.find('.pagination a[rel=next]').attr('href');
       var bottom = $(this).outerHeight() - ($(this)[0].scrollHeight - $(this).scrollTop() );
       if (more_posts_url && bottom >= 0) {
         $.getScript(more_posts_url);
       }
     });
   }
   });

};

$(document).on('page:change', everyPage);
