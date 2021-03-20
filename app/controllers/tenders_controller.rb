class TendersController < ApplicationController
  def index
    @tenders = Tender.all
  end

  def show
    @tenders = Tender.find(params[:id])
  end

  def new
    @tenders = Tender.new
  end

  def create
    @tenders = Tender.new(tenders_params)
    if @tenders.save
      flash[:success] = "Section successfully saved!"
      redirect_to @tenders
    else
      flash[:error] = "Found an error"
      render :new
    end
  end

  private

  def tenders_params
    params.require(:tenders).permit(:tender_name, :close_date, :description, :location, :volume, :minimum_bid)
  end
end
