class ProductsController < ApplicationController
	before_action :find_product_id, only:[:show, :add_to_cart]
	def index
		@products = Product.all
	end

	def show

	end

	def add_to_cart
		if !current_cart.products.include?(@product)
			current_cart.add_product_to_cart(@product)
			flash[:notice] = "成功加入购物车"
		else
			flash[:warning] = "你的购物车内已经有此物品"
		end

		redirect_to :back

	end


	private



	def find_product_id
		@product = Product.find(params[:id])
	end
end
