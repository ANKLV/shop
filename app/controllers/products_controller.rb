class ProductsController < ApplicationController

  def index; end

  def show; end

  def to_param
    name
  end

  private

  def find_category
    @category = Category.find(params[:category_id])
  end

  def set_product
    @product = @category.products.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:category_id, :price, :description, :name, :image)
  end
end
