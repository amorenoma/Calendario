class HomepageController < ApplicationController
  def index 
    @meses=Mes.all
  end
end
