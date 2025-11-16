require "json"
require "http/client"

class FreeForexApi
  API_PATH = "api/live"
  def initialize
    @headers = HTTP::Headers {
      "Content-Type" => "application/json",
      "User-Agent" => "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36"
    }
    uri = URI.parse("https://www.freeforexapi.com")
    @http_client = HTTP::Client.new(uri)
  end

  def get_rates_data(pairs : String) : JSON::Any
    JSON.parse(
      @http_client.get("/#{API_PATH}?pairs=#{pairs}", headers: @headers).body)
  end

  def get_currency_pairs() : JSON::Any
    JSON.parse(
      @http_client.get("/#{API_PATH}", headers: @headers).body)
  end
end
