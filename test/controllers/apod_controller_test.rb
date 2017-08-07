require 'test_helper'

class ApodControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get apod_main_url
    assert_response :success
  end

end
