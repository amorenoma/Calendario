class CalendarsController < ApplicationController
  def show
    @calendar = Calendar.find(params[:id])
  end

  def index 
    @calendars = Calendar.all

  end
end
