class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :first_name
      t.string :last_name
      t.string :nickname
      t.text :solgan
      t.string :position_id
      t.string :integer

      t.timestamps null: false
    end
  end
end
