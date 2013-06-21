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
    dias= Array.new(@mes.dias) {""} 
    for i in 1..@mes.dias
      datos.each do |dato|
        if dato.fecha.day==i
          dias[i-1]=dato
        end
      end
    end
    @dias=dias
  end
end
