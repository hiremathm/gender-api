class Addcolumntonames < ActiveRecord::Migration
  def change
  	add_column :names, :gender, :string  end
end
