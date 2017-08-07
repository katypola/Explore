class ApodController < ApplicationController
  def main
  	@nasa_info = Apod.get_api_info[0..2]
  	# @media_type_is_video = @nasa_info['media_type'].eql?('video')
  end
end
