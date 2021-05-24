class CreatePigs < ActiveRecord::Migration[6.0]
  def change
    create_table :pigs do |t|
      t.string :name
      t.integer :weight
      t.text :bio
      t.integer :age
      t.string :profession
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
