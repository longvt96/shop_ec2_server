class AddColumnToTableProfile < ActiveRecord::Migration
  def change
  	add_column :profiles, :lat, :float
  	add_column :profiles, :long, :float
  end
end
