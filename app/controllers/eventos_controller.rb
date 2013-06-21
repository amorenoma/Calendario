class EventosController < ApplicationController

  def create
  	@evento = Evento.create!(params[:evento])
  	flash[:notice] = "El evento ha sido creado con exito"
  	redirect_to homepage_index_path
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
  end

  def destroy
  	@evento = Evento.find(params[:id])
  	@evento.destroy
  	flash[:notice]= "Evento borrado"
  	redirect_to homepage_index_path
  end

end
