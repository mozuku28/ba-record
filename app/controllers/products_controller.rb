class ProductsController < ApplicationController
  def index

  end

  def new
      @product = Product.new
  end

  # private
  # def product_params
  #     params.require(:product).permit(:title, :label_id, :image, :release_date, :stock_count)
  # end
end
