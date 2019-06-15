class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.boolean :librarian
      t.string :phone
      t.references :loan, foreign_key: true

      t.timestamps
    end
  end
end
