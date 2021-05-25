class CreatePigs < ActiveRecord::Migration[6.0]
  def change
    create_table :pigs do |t|
      t.string :name
      t.integer :weight
      t.text :bio
      t.string :profession
      t.integer :age
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
