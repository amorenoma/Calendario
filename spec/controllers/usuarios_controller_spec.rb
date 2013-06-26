require 'spec_helper'

describe UsuariosController do

  describe 'acciones basicas de usuarios' do
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
