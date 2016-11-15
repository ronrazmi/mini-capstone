class ProductsController < ApplicationController

	def index
		@allproducts = Product.all
		render 'index.html.erb'
	end

	def new
		render 'new.html.erb'
	end

	def create
		@product = Product.new(name: params["name"], price: params["price"], description: params["description"])
		@product.save
		flash[:success] = "You successfully created a new product"
		redirect_to "/products/#{@product.id}" 
	end

	def show
		id_of_product = params["id"]
		@product = Product.find_by(id: id_of_product)
		render 'show.html.erb'
	end

	def edit
		@product = Product.find_by(id: params["id"])
		render 'edit.html.erb'
	end

	def udpate
		@product = Product.find_by(id: params["id"])
		@product.update(name: params["name"], price: params["price"], description: params["description"])
		flash[:info] = "Here is your updated product"
		redirect_to "/products/#{@product.id}"
	end

	def destroy
		@product=Product.find_by(id: params["id"])
		@product.destroy
		flash[:danger] = "This product was deleted"
		redirect_to "/products"
	end
		
end
