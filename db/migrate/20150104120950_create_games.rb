class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.text :description
      t.string :picture
      t.integer :mark

      t.timestamps
    end
  end
end
