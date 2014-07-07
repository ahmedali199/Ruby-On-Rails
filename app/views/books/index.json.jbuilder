json.array!(@books) do |book|
  json.extract! book, :id, :name, :auther_id, :library_id
  json.url book_url(book, format: :json)
end
