json.extract! book, :id, :title, :isbn13, :description, :coverimage, :instock_total, :instock_now, :author_id, :created_at, :updated_at
json.url book_url(book, format: :json)
