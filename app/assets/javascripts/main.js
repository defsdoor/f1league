var everyPage = function() {
   bootcards.init( {
    offCanvasBackdrop : true,
    offCanvasHideOnMainClick : true,
    enableTabletPortraitMode : true,
    disableRubberBanding : true
   } );
};

$(document).on('page:change', everyPage);
