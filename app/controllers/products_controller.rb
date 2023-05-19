class ProductsController < ApplicationController
  def index
    products = Product.order("created_at ASC")

    render json: products.try(:sort)
  end
  
  def show
    product = Product.find(params[:id])
    render json: product
  end

  def create
    product = Product.create(product_param)
    render json: product
  end

  def update
    product = Product.find(params[:id])
    product.update(product_param)
    render json: product
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    head :no_content, status: :ok
  end
  
  private
    def product_param
      params.require(:product).permit(:name, :description, :sku, :supplier_name, :color, :size, :unit, :in_stock, :type)     
    end
end


