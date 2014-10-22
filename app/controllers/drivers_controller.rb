class DriversController < ApplicationController

  respond_to :html, :js

  def index
    @drivers = Driver.page(params[:page])
  end

  def new
    @driver = Driver.new
  end

  def create
    @driver =  Driver.create( permitted_params )
    flash[:notice] = 'Added driver #{@driver.display_name}.' unless @driver.new_record?
    respond_with( @driver )
  end

  private

  def permitted_params
    params.require(:driver).permit(:forename, :surname, :display_name, :born_on)
  end
end
