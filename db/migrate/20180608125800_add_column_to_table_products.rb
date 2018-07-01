class AddColumnToTableProducts < ActiveRecord::Migration
  def change
  	add_column :products, :qr_code, :string
  end
end
