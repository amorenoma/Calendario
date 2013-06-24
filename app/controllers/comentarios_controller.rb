class ComentariosController < ApplicationController

  def new
#    puts "???????????????????????????????????????????'"
#    puts session[:idevento]
 #   @idevento=session[:idevento]
    @idevento=session[:idevento]
  end

  def create
        params[:comentario][:fecha]=DateTime.now
  	Comentario.create!(params[:comentario])
  	redirect_to evento_path(session[:evento])
  end

  def index
    @comentarios = Comentario.find(:all).sort_by {|evt| evt.fecha}
  end

  def destroy
    @comentario = Comentario.find(params[:id])
    @comentario.destroy
    flash[:notice]= "El comentario ha sido borrado"
    redirect_to comentarios_path
  end

end
