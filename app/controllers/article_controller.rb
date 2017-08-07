class ArticleController < ApplicationController
	def index
		@news_info = Article.get_api_info[0..3]
	end
end
