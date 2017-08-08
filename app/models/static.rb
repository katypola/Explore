class Static < ApplicationRecord
	def self.get_api_info
		news_api = "https://newsapi.org/v1/articles?source=national-geographic&sortBy=top&apiKey=#{ENV['NEWS_API_KEY']}"
		request_to_news_api = Net::HTTP.get(URI(news_api))
		results = JSON.parse request_to_news_api
		results["articles"]
	end
end
