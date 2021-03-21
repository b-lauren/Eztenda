class TendersController < ApplicationController
  def show
    @tender = Tender.find(params[:id])
    @bids = Bid.all
  end

  def new
    @tender = Tender.new
  end

  def create
    @tender = Tender.new(tenders_params)
    @tender.user = current_user
    if @tender.save!
      flash[:success] = "Section successfully saved!"
      redirect_to @tender
    else
      flash[:error] = "Found an error"
      render :new
    end
  end

  private

  def tenders_params
    params.require(:tender).permit(:tender_name, :start_date, :close_date, :description, :volume, :minimum_bid,
                                    :drink_id, :tender_auction_expiry)
  end
end
