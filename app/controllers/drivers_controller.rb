class DriversController < ApplicationController
  include RecordNotFound

  respond_to :html, :js

  before_action :get_driver, only: [:show, :edit, :detail]

  def index
    @drivers = Driver.page(params[:page]).per(params[:per])
  end

  def show
  end

  def new
    @driver = Driver.new
  end

  def edit
    @driver = Driver.find(params[:id])
  end

  def detail
  end

  def create
    @driver =  Driver.create( permitted_params )
    flash[:notice] = 'Added driver #{@driver.display_name}.' unless @driver.new_record?
    respond_with( @driver )
  end

  def update
    @driver = Driver.find(params[:id])
    @driver.update( permitted_params )
    respond_with( @driver )
  end

  private

  def get_driver
    @driver = Driver.find(params[:id])
  end

  def permitted_params
    params.require(:driver).permit(:forename, :surname, :display_name, :born_on, :country_id, :photo)
  end
end
