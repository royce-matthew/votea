class RemoveTypos < ActiveRecord::Migration
  def change
  	remove_column :candidates, :integer
  	remove_column :candidates, :solgan
  	add_column :candidates, :slogan, :text
  end
end
