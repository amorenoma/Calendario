require 'spec_helper'

describe EventosController do
  describe 'acciones basicas de eventos' do
    it 'crear un nuevo evento' do
      evt = mock('evt1', :fecha => '30-Jun-2013 9:00:00', :asignatura => 'IST', :tipo => 'examen', :aula => '313', :dificultad => '3')
      Evento.should_receive(:create!).and_return(evt)
      post :create, {:evento => evt}
      flash[:notice].should == "El evento ha sido creado con exito"
    end
    it 'modificar un evento' do
      evt = mock('evt1')
      Evento.should_receive(:find).with('1').and_return(evt)
      get :edit, {:id => 1}
      response.should render_template("edit")
    end
    it 'borrar un evento' do
      evt = mock('evt1')
      Evento.should_receive(:find).with('1').and_return(evt)
      evt.should_receive(:destroy).and_return(true)
      post :destroy, {:id => '1'}
      flash[:notice].should == "El evento ha sido borrado"
    end
  end
end
