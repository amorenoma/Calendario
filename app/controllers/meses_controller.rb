class MesesController < ApplicationController 
  def show
		@asignaturas = Evento.all_asignaturas

		@selected_asignaturas = params[:asignaturas] || {}
    
    if @selected_asignaturas == {}
      @selected_asignaturas = Hash[@asignaturas.map {|asignatura| [asignatura, asignatura]}]
    end

    @mes = Mes.find(params[:id])
    eventos = Evento.find_all_by_asignatura(@selected_asignaturas.keys)
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
