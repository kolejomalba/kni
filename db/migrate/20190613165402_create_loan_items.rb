class CreateLoanItems < ActiveRecord::Migration[5.2]
  def change
    create_table :loan_items do |t|
      t.references :loan, foreign_key: true
      t.references :book, foreign_key: true

      t.timestamps
    end
  end
end
