require 'spec_helper'

describe ComentariosController do
  describe 'acciones basicas de comentarios' do
    it 'borrar un comentario' do
      cmt = mock('cmt1', :comentario => 'comentario de prueba', :evento => '1' , :usuario => 'Pheras')
      Comentario.should_receive(:find).with('1').and_return(cmt)
      cmt.should_receive(:destroy).and_return(true)
      post :destroy, {:id => '1'}
      flash[:notice].should == "El comentario ha sido borrado"
    end
  end
end
