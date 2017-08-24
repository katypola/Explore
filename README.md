# MadSciExplorer

Need a good idea for a science fair project, or just a fun activity for the weekend?  MadSciExplorer lets you search across a variety of scientific fields and experiments for anything from making your own volcano to reenacting an eclipse with flashlights or making your own webpage.  

This site was a passion project; I've always loved science and would've loved a resource to find new experiments.

It also incorporates a news API pulling the current top articles from National Geographic, as well as a NASA API to show pictures from the NASA Astronomy Picture of the Day.

## Features Used

* Running on Ruby 2.4.0

* Using Rails scaffold feature to build database

* Use Devise gem to create user

* Use bcrypt gem to encrypt passwords

* Use paperclip gem for image uploads

* Use simple_form gem for form formatting


## Build Project Database

````
rails new science
cd science

* in gemfile -> gem "devise", gem "paperclip", "~> 5.0.0", gem ‘simple_form’, uncomment: gem 'bcrypt', '~> 3.1.7' *

gem install bundler (if necessary)

bundle install

* add CDN’s for bootstrap in layouts/application so that the head (under the title) looks like this:
	<%= csrf_meta_tags %>

    	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    	<%= stylesheet_link_tag    'application', media: 'all', 'data-turbolinks-track': 'reload' %>
    	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    	<%= javascript_include_tag 'application', 'data-turbolinks-track': 'reload' %> *

rails generate simple_form:install --bootstrap

rails g devise:install

* in config/environments/development -> add 'config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }' *
* in config/routes -> add 'root static#home' *

rails g controller static

* touch app/views/static/home.html.erb *
* in app/layouts/application -> add notice and alert paragraphs *

rails g devise user
rails g devise:views

* in db/migrate/(devise create user) -> add fields for t.string :fname, t.string :lname, t.string :username, t.boolean :admin, default: false, t.attachment :propic

under 'database authenticatable' add: t.string :username, null: false

under first end, add: add_index :users, :username, unique: true *

rails g scaffold field name:string overview:text image:attachment
rails g scaffold experiment title:string overview:text image:attachment field:belongs_to
rails g scaffold step number:integer body:text image:attachment experiment:belongs_to
rails g scaffold kit name:string image:attachment experiment:belongs_to
rails g scaffold post title:string body:text image:attachment user:belongs_to experiment:belongs_to
rails g scaffold comment body:string user:belongs_to post:belongs_to
rails g model location name:string
rails g model item name:string
rails g model article name:string picture:string alink:string overview:text
rails g controller article
rails g migration UserField
rails g model user_field
rails g migration UserExperiment
rails g model user_experiment
rails g migration UserKit
rails g model user_kit
rails g migration KitItem
rails g model kit_item
rails g migration UserArticle
rails g model user_article

````
## Adjust The Database
````
* in migration files for user_field (and other join tables) add -> '  def change
    create_table :user_fields, id: false do |t|
     t.belongs_to :user
     t.belongs_to :field
     t.timestamps
   end' *

* in user, field, experiment, step, kit, post, comment, location, item, article, and join table models: add relationships -> add 'class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :location
  has_many :user_fields, dependent: :destroy
  has_many :fields, through: :user_fields, dependent: :destroy
  has_many :user_experiments, dependent: :destroy
  has_many :experiments, through: :user_experiments, dependent: :destroy
  has_many :user_kits, dependent: :destroy
  has_many :kits, through: :user_kits, dependent: :destroy
  has_many :kit_items, dependent: :destroy
  has_many :items, through: :kit_items, dependent: :destroy
  has_many :user_articles, dependent: :destroy
  has_many :articles, through: :user_articles, dependent: :destroy
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_attached_file :propic, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/assets/default/:style/default_pic.png"
  validates_attachment_content_type :propic, content_type: /\Aimage\/.*\z/
  validates :username, :presence => true, :uniqueness => { :case_sensitive => false }
  def full_name
    "#{fname} #{lname}".strip
  end
end' *

rails db:migrate

````
## Build Search
````
*build model and controller, and views *

 rails g model search
 rails g controller search
 touch app/views/search/index.html.erb

 * in search controller:
 	def index
 	end *

 * in routes: get '/search' => 'search#index' *

````
## Incorporate NASA APOD API
````
* add API Key to bash profile, give it a name (APOD_API_KEY) *

 rails g model apod apodid:integer apodtitle:string apodpic:string hdapod:string cright:string apoddate:string expl:text mtype:string sversion:string

 * in apod model: 
 	def self.get_api_info
  		nasa_api = "https://api.nasa.gov/planetary/apod?api_key=#{ENV['APOD_API_KEY']}&count=3"
  		request_to_nasa_api = Net::HTTP.get(URI(nasa_api))
  		results = JSON.parse request_to_nasa_api
	end *

 rails g controller apod main

 * in routes:
 get '/apod/main' => 'apod#main' *

 * in apod controller:
  	def main
  		@nasa_info = Apod.get_api_info[0..2]
  		# @media_type_is_video = @nasa_info['media_type'].eql?('video')
  	end *

 * in apod/main.html.erb:
 	<% @nasa_info.each do |apod| %>
		<h1><%= apod["title"] %></h1>
		<img src="<%= apod["url"] %>" />
		<p><%= apod["date"] %></p>
		<p><%= apod["explanation"] %></p>
	<% end %> *

````
## Incorporate NATIONAL GEOGRAPHIC NEWS API
````
* add API Key to bash profile, give it a name (NEWS_API_KEY) *

 * in article model:
 	def self.get_api_info
		news_api = "https://newsapi.org/v1/articles?source=national-geographic&sortBy=top&apiKey=#{ENV['NEWS_API_KEY']}"
		request_to_news_api = Net::HTTP.get(URI(news_api))
		results = JSON.parse request_to_news_api
		results["articles"]
	end *

 * in routes:
 get '/article/index' => 'article#index' *

 * in article controller:
 	def index
		@news_info = Article.get_api_info[0..3]
	end *

 * in article/index.html.erb:
 	<% @news_info.each do |article|  %>
		<h1><%= article["title"] %></h1>
		<a href="<%= article["url"] %>">Read full article</a><br />
		<img class="newsImage" src="<%= article["urlToImage"] %>" />
		<p><%= article["publishedAt"] %></p>
		<p><%= article["description"] %></p><br />
	<% end %> *

* in application helper:
	def resource_name
		:user
	end

	def resource
		@resource ||= User.new
	end

	def devise_mapping
		@devise_mapping ||= Devise.mappings[:user]
	end *

touch app/views/static/profile.html.erb
touch app/views/experiments/_steps.html.erb

* implement UJS for add/remove article buttons, to enable users to save articles to their profiles *

````
## Create Registrations Controller
````
rails g controller registration

* and add: *

private

def sign_up_params
  params.require(:user).permit(:fname, :lname, :email, :username, :location_id, :hometown, :propic, :password, :password_confirmation)
end

def account_update_params
  params.require(:user).permit(:fname, :lname, :email, :username, :location_id, :hometown, :propic, :password, :password_confirmation, :current_password)
end

* in application controller, add: *

def after_sign_in_path_for(resource_or_scope)
    profile_path(current_user.username)
  end
def after_sign_up_path_for(resource_or_scope)
  profile_path(current_user.username)
end

protected

def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up, keys: [:fname, :lname, :email, :username, :location_id, :propic, :password, :password_confirmation])
end


???REMOVE???? info in migration from model creation command above?
???REMOVE???? search model and controller
???REMOVE???? static model
???REMOVE???? attributes from article migration
````