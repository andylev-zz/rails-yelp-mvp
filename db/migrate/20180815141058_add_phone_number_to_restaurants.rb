class AddPhoneNumberToRestaurants < ActiveRecord::Migration[5.2]
  def change

    add_column :restaurants, :phone_number, :string
    rename_column :restaurants, :catergory, :category
    rename_column :restaurants, :stars, :reviews
    remove_column :restaurants, :integer
    remove_column :restaurants, :text
  end
end
