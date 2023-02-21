class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :title
      t.integer :details
      t.string :completed
      t.string :
      t.string :boolean

      t.timestamps
    end
  end
end
