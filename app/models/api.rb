require 'httparty'

class Api
  def self.get_info(ticker)
    binding.pry
    response = HTTParty.get("https://www.alphavantage.co/query?function=OVERVIEW&symbol=#{ticker}&apikey=#{ENV['API_KEY']}")
  end
end
