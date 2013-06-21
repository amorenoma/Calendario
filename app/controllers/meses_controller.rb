class MesesController < ApplicationController 
  def show
    @mes = Mes.find(params[:id])
    eventos = Evento.all
    datos= Array.new
    eventos.each do |evento|
      if evento.fecha.month.to_s==@mes.nmes
        datos.push(evento)
      end
    end
    listadias=Array.new(@mes.dias) #=> [true, true, true]
    eventosdia=[]
    for i in 1..@mes.dias
      eventosdia=[]
      datos.each do |dato|
        if dato.fecha.day==i
          eventosdia.append(dato)
        end
      end
      listadias[i-1]=eventosdia
    end
    @listadias=listadias
  end
end
