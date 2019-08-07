class CitiesController < ApplicationController
  def index
  end

  def show
<<<<<<< HEAD
=======
    
>>>>>>> 7b4d357497fdd3bb305a297cf077435b3b31f055
    @city = City.find(params[:id])

  end
end
