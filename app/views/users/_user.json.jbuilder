json.extract! user, :id, :name, :email, :librarian, :phone, :loan_id, :created_at, :updated_at
json.url user_url(user, format: :json)
