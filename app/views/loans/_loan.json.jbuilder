json.extract! loan, :id, :date_loaned, :date_returned, :confirmed, :book_id, :user_id, :created_at, :updated_at
json.url loan_url(loan, format: :json)
