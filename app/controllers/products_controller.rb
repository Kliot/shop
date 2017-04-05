class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @products= Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def edit
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to '/products'
    else
      render 'new'
    end
  end

  def update

  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    redirect_to product_path
  end

end
