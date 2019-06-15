class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :isbn13
      t.text :description
      t.string :coverimage
      t.integer :instock_total
      t.integer :instock_now
      t.references :author, foreign_key: true

      t.timestamps
    end
  end
end
