class UsuariosController < ApplicationController
  def new
  end
  def show
    @usuario = Usuario.find(params[:id])
  end

  def create
    @usuario = Usuario.create!(params[:usuario])
    session[:usuario]= @usuario
    flash[:notice] = "#{session[:usuario].nick} se ha registrado"
    redirect_to homepage_index_path
  end

  def login
  end

  def acceder 
    @usuario= Usuario.find_by_nick(params[:usuario][:nick])
    if @usuario then
      if @usuario.key == params[:usuario][:key] then
        session[:usuario]= @usuario
        flash[:notice] = "#{session[:usuario].nick} ha accedido correctamente"
        redirect_to homepage_index_path
      else
        flash[:warning] = "clave invalida"
        redirect_to login_path
      end
     else
       flash[:warning]="usuario inexistente"
       redirect_to login_path
     end
  end

  def logout
    session.clear
    redirect_to homepage_index_path
  end
end
