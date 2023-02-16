require 'faraday'
class ItemService
  def self.item(id)
    response = Faraday.get("http://localhost:3000/api/v1/items/#{id}")

    data = JSON.parse(response.body, symbolize_names: true)[:data]
  end
end