class Apod < ApplicationRecord
	def self.get_api_info
  		nasa_api = "https://api.nasa.gov/planetary/apod?api_key=#{ENV['APOD_API_KEY']}&count=3"
  		request_to_nasa_api = Net::HTTP.get(URI(nasa_api))
  		results = JSON.parse request_to_nasa_api
	end
end
