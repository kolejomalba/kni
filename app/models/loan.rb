class Loan < ApplicationRecord
  has_many :loan_items, dependent: :destroy
  has_many :books, through: :loan_items
  belongs_to :user
end
