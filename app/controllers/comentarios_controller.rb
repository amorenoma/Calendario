class ComentariosController < ApplicationController

  def new
#    puts "???????????????????????????????????????????'"
#    puts session[:idevento]
 #   @idevento=session[:idevento]
    if session[:comentario]==0
      @idevento=params[:format]
    else
      @idevento=session[:evento].id
    end
  end

  def create
    params[:comentario][:fecha]=DateTime.now
  	Comentario.create!(params[:comentario])
    if session[:comentario]==0
      redirect_to ver_dia_path(session[:mes],:dia=>session[:dia])
    else
      redirect_to evento_path(session[:evento])
    end
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
