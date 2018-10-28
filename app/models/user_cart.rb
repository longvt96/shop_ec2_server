class UserCart < ActiveRecord::Base
	belongs_to :user
	belongs_to :product

	after_create :update_number_production


	private
	def update_number_production
		product = self.product
		product.number_product -= 1
		product.number_sell += 1
		product.save
	end
end
