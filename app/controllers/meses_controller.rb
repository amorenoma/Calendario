class MesesController < ApplicationController 
  def show
		@asignaturas = Evento.all_asignaturas

		@selected_asignaturas = params[:asignaturas] || {}
    
    if @selected_asignaturas == {}
      @selected_asignaturas = Hash[@asignaturas.map {|asignatura| [asignatura, asignatura]}]
    end

    @mes = Mes.find(params[:id])
    @nhuecos = DateTime.parse("#{@mes.year}-#{@mes.nmes}-1").wday-1
    if @nhuecos==-1
      @nhuecos=6
    end
    eventos = Evento.find_all_by_asignatura(@selected_asignaturas.keys)
    datos= Array.new
    eventos.each do |evento|
      if evento.fecha.month.to_s==@mes.nmes
        datos.push(evento)
      end
    end
    casillas=@mes.dias+@nhuecos
    listadias=Array.new(casillas) #=> [true, true, true]
    eventosdia=[]
    for i in 1..@mes.dias
      eventosdia=[]
      datos.each do |dato|
        if dato.fecha.day==i
          eventosdia.append(dato)
        end
      end
      listadias[i-1+@nhuecos]=eventosdia
    end
    @listadias=listadias
  end

  def ver_dia
    @mes=Mes.find_by_id(params[:id])
    nmes = @mes.nmes
    eventos=Evento.all
    @eventosdia=[]
    eventos.each do |evento|
      if evento.fecha.day.to_s == params[:dia] && evento.fecha.month.to_s == nmes
        @eventosdia.push evento
      end
    end
    comentarios = Comentario.all
    @comentarioseventos=[]
    for evento in @eventosdia
      comentariosevento=[]
      comentariosevento.push evento.id #en la primera posicion el id del evento
      comentarios.each do |comentario|
        if evento.id.to_s == comentario.evento
          comentariosevento.push comentario
        end
      end
      @comentarioseventos.push comentariosevento
    end
  end

  def select
    mes = Mes.find_all_by_mes(params[:mes]["mes"])
    redirect_to mes_path(mes)
  end

end
