class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  def index
    @page = params[:page].present? ? params[:page].to_i : 1
    @products = Product.page(@page)
  end

  def show
  end

  def new
    @product = Product.new
  end

  def edit
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
    @product = Product.find(params[:id])

    if @product.update(product_params)
      redirect_to @product
    else
      render 'edit'
    end
  end


  def destroy
    @product.destroy

    redirect_to '/products'
  end

  private
  def product_params
    params.require(:product).permit(:title, :description,
                                    :image_url, :price,
                                    images_attributes: [:id, :file, :_destroy])
  end
  def set_product
    @product= Product.find(params[:id])
  end
end


