require 'faraday'
class MerchantItemsService
  def self.merchant_items(id)
    response = Faraday.get("http://localhost:3000/api/v1/merchants/#{id}/items")

    data = JSON.parse(response.body, symbolize_names: true)[:data]
  end
end