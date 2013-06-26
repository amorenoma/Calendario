require 'spec_helper'

describe UsuariosController do

  describe 'acciones basicas de usuarios' do
    it 'crear un nuevo usuario' do
      usr = mock('usr1', :nombre => 'Alex', :email => 'alex@gmail.com', :rol => 'Alumno', :key => '123', :nick => 'Flexo')
      Usuario.should_receive(:create!).and_return(usr)
      post :create, {:usuario => usr}
      response.should redirect_to(homepage_index_path)
      flash[:notice].should == "Flexo se ha registrado"
    end
    it 'modificar un usuario' do
      usr = mock('evt1')
      Usuario.should_receive(:find).with('1').and_return(usr)
      get :edit, {:id => 1}
      response.should render_template("edit")
    end
    it 'borrar un usuario' do
      usr = mock('evt1')
      Usuario.should_receive(:find).with('1').and_return(usr)
      usr.should_receive(:destroy).and_return(true)
      post :destroy, {:id => '1'}
      flash[:notice].should == "Usuario borrado"
    end
  end
end
