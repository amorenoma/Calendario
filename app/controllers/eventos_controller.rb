class EventosController < ApplicationController

  def index
    #este es un modo de ordenar (en el show.html.haml el otro):
    @eventos = Evento.find(:all)
  end

  def create
  	@evento = Evento.create!(params[:evento])
  	flash[:notice] = "El evento ha sido creado con exito"
  	redirect_to evento_path(@evento)
  end

  def edit
  	@evento = Evento.find params[:id]
  end

  def update
  	@evento = Evento.find params[:id]
  	@evento.update_attributes!(params[:evento])
  	flash[:notice] = "El evento ha sido actualizado con exito"
  	redirect_to evento_path(@evento)
  end

  def show
    @evento = Evento.find(params[:id])
    meses = Mes.all
    meses.each do |mes|
    	if mes.nmes==@evento.fecha.month.to_s
    		@mes=mes
    	end
    end
    comentarios = Comentario.all
    @comentariosevento=[]
    comentarios.each do |comentario|
      if params[:id]==comentario.evento
        @comentariosevento.push comentario
      end
    end
  end

  def destroy
  	@evento = Evento.find(params[:id])
  	@evento.destroy
  	flash[:notice]= "El evento ha sido borrado"
  	redirect_to eventos_path
  end

end
