class Product < ApplicationRecord

	def sale_message
		if price.to_i < 2
			return "discount item!"
		else
			return "On Sale!"
		end
	end
end
