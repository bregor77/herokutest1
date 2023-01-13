# frozen_string_literal: true

# Services for API Weather
class CurrentWeatherService
  # https://api.openweathermap.org/data/2.5/weather?lat={lat}&lon={lon}&appid={API key}
  # https://api.openweathermap.org/data/2.5/weather?lat=53.3498&lon=-6.266155&appid=88105ba41fde03fe358f700f0ec1a680
  BASE_URL = 'https://api.openweathermap.org/data/2.5/weather'
  API_KEY = '88105ba41fde03fe358f700f0ec1a680'
  # it's better use ".env" instead leave it as sensitive data but I didn't fugured out how to use it on HEROKU
  # API_KEY = ENV['OPENWEATHER_API_KEY']

  def initialize(latitude:, longitude:, units:)
    @latitude = latitude
    @longitude = longitude
    @units = units
  end

  def call
    response = Net::HTTP.get_response(uri)
    JSON.parse(response.body)
  end

  private

  attr_reader :latitude, :longitude, :units

  def uri
    return @uri if defined?(@uri)

    # setting uri
    @uri = URI(BASE_URL)
    # setting different parameters as a query
    params = { lat: latitude, lon: longitude, units: units, appid: API_KEY }
    @uri.query = URI.encode_www_form(params)
    # returning it
    @uri
  end
end
