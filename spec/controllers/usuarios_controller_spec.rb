require 'spec_helper'

describe UsuariosController do
  describe 'interfaz de usuarios' do
    it 'al crear un usuario, se debe enviar un formulario'
    
  end

  describe 'acciones basicas de usuarios' do
    it 'crear un nuevo usuario' do
      usr = mock('usr1', :nombre => 'Alex', :email => 'alex@gmail.com', :rol => 'Alumno', :key => '123', :nick => 'Flexo')
      Usuario.should_receive(:create!).and_return(usr)
      post :create, {:usuario => usr}
      response.should redirect_to(homepage_index_path)
      flash[:notice].should == "Flexo se ha registrado"
    end
    #it 'should show a movie by id' do
      #month = mock('month1', :mes => 'Septiembre', :dias => '30', :nmes => '9')
      #Mes.should_receive(:find).with('1').and_return(month)
      #get :show, {:id => 1}
      #response.should render_template("show")
    #end
    #it 'should delete a movie' do
      #m = mock('movie')
      #m.stub!(:title)
      
      #Movie.should_receive(:find).with('1').and_return(m)
      #m.should_receive(:destroy).and_return(true)
      #post :destroy, {:id => '1'}
      #response.should redirect_to(movies_path)
    #end
    it 'crear un nuevo evento' do
      evt = mock('evt1', :fecha => '30-Jun-2013 9:00:00', :asignatura => 'IST', :tipo => 'examen', :aula => '313', :dificultad => '3')
      Evento.should_receive(:create!).and_return(evt)
      post :create, {:evento => evt}
      response.should redirect_to(homepage_index_path)
      flash[:notice].should == "El evento ha sido creado con exito"
    end
  end
end
