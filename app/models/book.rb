class Book < ApplicationRecord
  has_many :loan_items
  has_many :loans, through: :loan_items
  has_and_belongs_to_many :authors

  
end
