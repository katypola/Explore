class StaticController < ApplicationController
	def home
		@news_info = Article.get_api_info[0..3]
		@fields = Field.all
		# @field = Field.find_by(params[:id])
  	end

  	# link the path to the user profile page
  	def profile
    	# @user = User.find_by_username(params[:username])
    	@user = User.find_by_username(params[:username])
  
      @post = params[:post_id] ? Post.find(params[:post_id]) : Post.new

  	end
end
