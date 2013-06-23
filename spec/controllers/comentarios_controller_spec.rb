require 'spec_helper'

describe ComentariosController do

  describe 'acciones basicas de comentarios' do
    it 'crear un nuevo comentario' do
      evt = mock('evt1', :fecha => '30-Jun-2013 9:00:00', :asignatura => 'IST', :tipo => 'examen', :aula => '313', :dificultad => '3')
      cmt = mock('cmt1', :comentario => 'comentario de prueba', :evento => '1' , :usuario => 'Pheras')
      session[:evento] = '1'
      Comentario.should_receive(:create!).and_return(cmt)
      post :create, {:comentario => cmt}
    end
    it 'borrar un comentario' do
      cmt = mock('cmt1', :comentario => 'comentario de prueba', :evento => '1' , :usuario => 'Pheras')
      Comentario.should_receive(:find).with('1').and_return(cmt)
      cmt.should_receive(:destroy).and_return(true)
      post :destroy, {:id => '1'}
      flash[:notice].should == "El comentario ha sido borrado"
    end
  end
end
