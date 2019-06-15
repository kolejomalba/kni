class LoanItem < ApplicationRecord
  belongs_to :loan
  belongs_to :book
end
