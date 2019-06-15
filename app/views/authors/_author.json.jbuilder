json.extract! author, :id, :firstname, :surname, :created_at, :updated_at
json.url author_url(author, format: :json)
