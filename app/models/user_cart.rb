class UserCart < ActiveRecord::Base
	belongs_to :user
	belongs_to :product

	after_create :update_number_production


	private
	def update_number_production
		product = self.product
		product.update_attribute(number_product: self.number_product - 1)
	end
end
