class ProductsController < ApplicationController

    def index
        @products = Product.all
    end

    def new
        @product = Product.new
        # @drink = Drink.find(params[:drink_id])
    end

    def create
        @product = Product.new(product_params)
        # @drink = Drink.find(params[:drink_id])
        # @product.user = current_user
        # @product.drink = @drink
            if @product.save!
                redirect_to product_path(@product)
            else
                render :new
            end
    end

    def show
        @product = Product.find(params[:id])
        @drink = @product.drink
        @user = @product.users
    end

    private

    def product_params
        params.require(:product).permit(:name, :description, :portion, :drink_id)
    end
end
