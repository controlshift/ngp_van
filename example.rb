require_relative 'lib/ngp_van'
require 'faraday/detailed_logger'

class NgpVan::Client
  alias_method :uninstrumented_connection, :connection

  def connection
    options = {
      url: config.api_endpoint,
      headers: {
        'Accept' => 'application/json; charset=utf-8',
        'User-Agent' => config.user_agent
      }
    }

    Faraday::Connection.new(options) do |connection|
      connection.response :detailed_logger
      connection.basic_auth(
        config.application_name,
        config.api_key
      )

      connection.request(:json)
      connection.use NgpVan::Response::RaiseError

      connection.adapter Faraday.default_adapter
    end
  end
end

configuration = NgpVan::Configuration.new
configuration.application_name = ENV['NGPVAN_APPLICATION_NAME']
configuration.api_key = ENV['NGPVAN_API_KEY']
configuration.api_endpoint = ENV['NGPVAN_API_ENDPOINT']

client = NgpVan::Client.new(configuration)

require 'pry'
binding.pry
puts "hola"