class CarsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @cars = @user.cars
  end
end
