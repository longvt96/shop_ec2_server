class AddNumberProductToTableProducts < ActiveRecord::Migration
  def change
  	add_column :products, :number_product, :integer, default: 0
  	add_column :products, :status, :boolean, default: false
  	add_column :products, :user_id, :integer
  	add_column :products, :number_sell, :integer, default: 0
  end
end
