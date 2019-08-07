class CitiesController < ApplicationController
  def index
  end

  def show
    @all_city = City.all
    @city = City.find(params[:id])
  end
end
