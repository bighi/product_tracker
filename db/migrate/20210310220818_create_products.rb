class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.date :date_of_purchase
      t.decimal :price, precision: 9, scale: 2
      t.date :date_of_disuse
      t.references :user

      t.timestamps
    end
  end
end
