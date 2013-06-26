popupayuda= {
  setup: function() {
    texto="awefawef";
    // add invisible 'div' to end of page:
    $('<div id="popupayuda"></div>').
    hide().
    appendTo($('body'));
    $('#ayuda').click(function(){
      $('#popupayuda').html(texto).show();			
    });   
  },


}
$(popupayuda.setup);
