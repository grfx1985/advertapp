json.array!(@adverts) do |advert|
  json.extract! advert, :id, :title, :description, :name, :surname, :email, :mobile, :date, :active
  json.url advert_url(advert, format: :json)
end
