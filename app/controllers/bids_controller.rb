class BidsController < ApplicationController
  # def index
  #     @bids = Bid.all
  # end

  # def show
  #   @bid = Bid.find(params[:id])
  # end

  def new
    @bid = Bid.new
    @tender = Tender.find(params[:tender_id])
  end

  def create
    @bid = Bid.new(bid_params)
    @tender = Tender.find(params[:tender_id])
    @bid.tender = @tender
    @bid.user = current_user
    if @bid.save!
      redirect_to tender_path(@tender)
    else
      render :new
    end
  end

  def destroy
    @bid = Bid.find(params[:id])
    @bid.destroy
    redirect_to @bids
  end

  private

  def bid_params
    params.require(:bid).permit(:offer_description, :offer_price, :offer_add_ons, :wholesaler, :product_id)
    #tender id
  end
end
