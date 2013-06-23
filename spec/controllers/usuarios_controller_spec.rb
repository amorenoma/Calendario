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
  end
end
