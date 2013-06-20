class MesesController < ApplicationController 
  def show
    @mes = Mes.find(params[:id])
    eventos = Evento.all
    #aux=0
    eventos.each do |evento|
      puts '!!!!!!!!!!!!!!!!!!!!!!!!!!'
      puts evento.fecha.to_s.split("-")[1]
      #if evento.fecha.to_s.split("-")[1]=~@mes.mes
        #puts '================'
        #puts evento.fecha
        #datos[aux]=evento
        #aux=aux+1
      #end
    end
  end
end
