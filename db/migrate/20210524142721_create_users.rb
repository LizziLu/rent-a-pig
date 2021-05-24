class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :e_mail
      t.string :password

      t.timestamps
    end
  end
end
