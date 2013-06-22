class ComentariosController < ApplicationController

  def new
#    puts "???????????????????????????????????????????'"
#    puts session[:idevento]
 #   @idevento=session[:idevento]
    @idevento=session[:idevento]
  end

  def create
  	Comentario.create!(params[:comentario])
  	redirect_to evento_path(session[:evento])
  end

  def index
    #este es un modo de ordenar (en el show.html.haml el otro):
    @comentarios = Comentario.find(:all)
  end

  def destroy
    @comentario = Comentario.find(params[:id])
    @comentario.destroy
    flash[:notice]= "El comentario ha sido borrado"
    redirect_to comentarios_path
  end

end
