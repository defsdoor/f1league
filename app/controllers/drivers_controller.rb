class DriversController < ApplicationController

  respond_to :html, :js

  def index
    @drivers = Driver.page(params[:page])
  end
end
