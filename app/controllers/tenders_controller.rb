class TendersController < ApplicationController
  def show
    @tender = Tender.find(params[:id])
  end

  def new
    @tender = Tender.new
  end

  def create
    @tender = Tender.new(tenders_params)
    @tender.user = current_user
    if @tender.save
      flash[:success] = "Section successfully saved!"
      redirect_to @tender
    else
      flash[:error] = "Found an error"
      render :new
    end
  end

  private

  def tenders_params
    params.require(:tenders).permit(:tender_name, :close_date, :description, :location, :volume, :minimum_bid, drink_id)
  end
end
