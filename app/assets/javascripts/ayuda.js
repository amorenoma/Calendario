popupayuda= {
  setup: function() {
    texto="Descripción: A nuestros clientes(los profesores) les cuesta fijar una fecha en la que evaluar a los alumnos. Hasta ahora lo hacen, eligiendo cada profesor la fecha que le viene bien, independientemente de si se solapa con otra asignatura o no. Después si hay problemas, los delegados se reúnen con los profesores para cambiarlos. Esto supone, una pérdida de tiempo por las continuas modificaciones a realizar hasta que se llega a un acuerdo. A nuestros clientes les gustaría tener un sitio Web en el que pudieran poner fácilmente los exámenes, prácticas y entregas sin que se solapen con las de otras asignaturas. Nuestro proyecto desarrollará un sitio Web desde el que un usuario (profesor) pueda colocar sus tareas, viendo qué huecos en el calendario puede elegir. Los alumnos podrán visualizar dicho calendario con todas las tareas, e incluso ver sólo las asignaturas que ellos seleccionen. <br>Miembros: Juan Manuel Avilés Patiño: juanma_avi@hotmail.com<br> Ana Chicote Villar: ranaranitaranon@hotmail.com<br> Borja González Rivero: borjagon@gmail.com<br> Alejandro Moreno Del Mazo (scrum master): a.morenodelmazo@gmail.com<br> Rodrigo Castellano Muñoz: rodri.cm90@gmail.com<br> Samuel Martín Martínez: samuel.martinm@gmail.com";
    // add invisible 'div' to end of page:
    $('<div id="popupayuda"></div>').hide().appendTo($('body'));
    $('#ayuda').click(function(){
      $('#popupayuda').html(texto).show();			
      $('<br><a id="closepopup">Close</a>').appendTo($('#popupayuda'));
      $('#closepopup').click(function(){ 
        $('#popupayuda').hide();
      });	
    });   
  },


}
$(popupayuda.setup);
