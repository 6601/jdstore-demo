class ProductsController < ApplicationController
	before_action :find_product_id, only:[:show]
	def index
		@products = Product.all
	end

	def show
		
	end

	private

	def find_product_id
		@product = Product.find(params[:id])	
	end
end
