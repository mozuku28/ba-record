class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.integer :label_id
      t.integer :price
      t.text :image
      t.datetime :release_date
      t.integer :stock_count

      t.timestamps
    end
  end
end
