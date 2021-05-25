class AddPriceToPigs < ActiveRecord::Migration[6.0]
  def change
    add_column :pigs, :price, :integer
  end
end
