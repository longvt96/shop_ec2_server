class Product < ActiveRecord::Base

	belongs_to :category
	has_many :product_images
	belongs_to :shop
	has_many :comments
	has_many :user_product_favorites
	has_many :user_carts
	belongs_to :user

	accepts_nested_attributes_for :product_images

	enum status: [:unactive, :active ]
end
