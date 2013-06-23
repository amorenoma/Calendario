require 'spec_helper'

describe MesesController do
  fixtures :meses
  it 'mostrar un mes' do
    month = meses(:prueba_mes)
    Mes.stub(:find).with('1').and_return(month)
    get :show, {:id => '1'}
    response.should render_template("show")
  end
end
