json.extract! hotel, :id, :hotelname, :hoteladdress, :created_at, :updated_at
json.url hotel_url(hotel, format: :json)
