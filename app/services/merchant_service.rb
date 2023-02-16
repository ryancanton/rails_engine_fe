require 'faraday'
class MerchantService
  def self.merchants
    response = Faraday.get('http://localhost:3000/api/v1/merchants')

    data = JSON.parse(response.body, symbolize_names: true)[:data]
  end

  def self.merchant(id)
    response = Faraday.get("http://localhost:3000/api/v1/merchants/#{id}")

    data = JSON.parse(response.body, symbolize_names: true)[:data]
  end
end