class ArticleController < ApplicationController
  before_action :authenticate_user!
  def index
	  @news_info = Article.get_api_info[0..3]
	  @user = current_user
      @news_info.each do |article|
      	dbarticle = Article.find_by(:alink => params[:url])
      	unless dbarticle
      	article = Article.create(
      	alink: article["url"],
      	picture: article["urlToImage"],
      	name: article["title"],
      	overview: article["description"],
      	date: article["publishedAt"]
      	)
  	  	end
      end
  end

  def add
    @user = current_user
    @article = Article.find_by(:alink => params[:url])
    unless @article
      @article = Article.create(
      alink: params[:url],
      picture: params[:urlToImage],
      name: params[:title],
      overview: params[:description],
      date: params[:publishedAt]
      )
    end
    unless UserArticle.find_by(article_id: @article.id, user_id: @user.id)
      @user.articles << @article
    end
  end

  def remove
    @user = current_user
    @article = Article.find_by(:alink => params[:url])
    @userarticle = UserArticle.find_by(article_id: params[:id], user_id: current_user.id)
    unless @userarticle.nil?
      @userarticle.destroy
    else
    end
    redirect_to profile_path(@user.username)
  end

end
