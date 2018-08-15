class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :catergory
      t.string :text
      t.string :stars
      t.string :integer

      t.timestamps
    end
  end
end
