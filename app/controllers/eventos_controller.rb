class EventosController < ApplicationController
  def show
    @evento = Evento.find(params[:id])
    meses = Mes.all
    meses.each do |mes|
    	if mes.nmes==@evento.fecha.month.to_s
    		@mes=mes
    	end
    end
  end
end
