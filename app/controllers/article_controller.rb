class ArticleController < ApplicationController
  before_action :authenticate_user!
  def index
	  @news_info = Article.get_api_info[0..3]
  end

  def add
    @user = current_user
    @article = Article.find(params[:article_id])
    unless UserArticle.find_by(article_id: @article.id, user_id: @user.id)
      @user.articles << @article
    end
    respond_to do |format|
      format.js 
    end
  end

  def remove
    @user = current_user
    @article = Article.find( params[:id] )
    @userarticle = UserArticle.find_by(article_id: @article.id, user_id: current_user.id)
    unless @userarticle.nil?
      @userarticle.destroy
    else
    end
    respond_to do |format|
      format.js 
    end
    redirect_back(fallback_location: profile_path(@user.username))
  end

end
