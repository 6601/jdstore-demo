class Admin::ProductsController < ApplicationController
	layout "admin"
	before_action :find_product_id, only:[:show, :edit, :update, :destroy]
	before_action :authenticate_user!
	before_action :admin_required

	def index
		@products = Product.all
	end

	def new
		@product = Product.new
	end

	def create
		@product = Product.new(product_params)
		if @product.save
			redirect_to admin_products_path
		else
			render :new
		end
	end

	def edit
		
	end

	def show
		
	end


	def update
		if @product.update(product_params)
			redirect_to admin_products_path
		else
			render :edit
		end
	end

	def destroy
		@product.destroy
		redirect_to admin_products_path
	end



	private

	def find_product_id
		@product = Product.find(params[:id])	
	end

	def product_params
		params.require(:product).permit(:title, :description, :quantity, :price, :image)
		
	end

end
