class EventosController < ApplicationController
  def show
    @evento = Evento.find(params[:id])
  end

  def index 
    @eventos = Evento.all

  end
end
