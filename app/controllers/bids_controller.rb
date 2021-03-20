class BidsController < ApplicationController
    
    def index
          @bids = Bid.all
      end
    
      def show
        @bid = Bid.find(params[:id])
      end
  
      def new
        @bid = Bid.new
      end
  
      def create
        @bid = Bid.new(bid_params)
          @bid.user = current_user
        #   @bid.tender = @tender

            # do we need tender id here 
            if @bid.save ##bid.save!
              redirect_to @bid
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
        params.require(:bid).permit(:offer_description, :offer_price, :offer_add_ons, :wholesaler)
        #tender id 
      end    
        
end
