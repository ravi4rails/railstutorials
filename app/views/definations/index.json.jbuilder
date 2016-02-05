json.array!(@definations) do |defination|
  json.extract! defination, :id, :keyword, :description, :know_more
  json.url defination_url(defination, format: :json)
end
