class AddAddressToPig < ActiveRecord::Migration[6.0]
  def change
    add_column :pigs, :address, :string
  end
end
