class Article < ApplicationRecord
	has_many :user_articles, dependent: :destroy
	has_many :users, through: :user_articles, dependent: :destroy

  # require 'net/http'

	def self.get_api_info

    require 'net/http'
    
    # 1) Retrieve all the articles from the database
		news_api = "https://newsapi.org/v1/articles?source=national-geographic&sortBy=top&apiKey=#{ENV['NEWS_API_KEY']}"
		request_to_news_api = Net::HTTP.get(URI(news_api))
		results = JSON.parse request_to_news_api
    #articles = ActiveRecord::Relation.new self, :articles, self.predicate_builder
    articles = []
    # 2) Verify we have the articles in the database
		results["articles"].each do |article|
      db_article = self.find_by(alink: article["url"])
      # if we don't have one, add it
      unless db_article
        db_article = Article.create(
          alink: article["url"],
          picture: article["urlToImage"],
          name: article["title"],
          overview: article["description"],
          date: article["publishedAt"]
        )
      end
      articles << db_article
    end
    articles
	end

  def favorited? user
    user.user_articles.find_by( article_id: self.id )
  end

end
