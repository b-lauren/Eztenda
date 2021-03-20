class DrinksController < ApplicationController
  def index
    @drinks = Drink.all
  end

  def show
    @drink = Drink.find(params[:id])
  end

  def new
    @drink = Drink.new
  end

  def create
    @drink = Drink.new(drink_params)
    if @drink.save
      flash[:success] = "Section successfully saved!"
      redirect_to @drink
    else
      flash[:error] = "Found an error"
      render :new
    end
  end

  private

  def drink_params
    params.require(:drink).permit(:type, :description, :unit_of_measurement) #photo
  end

end
