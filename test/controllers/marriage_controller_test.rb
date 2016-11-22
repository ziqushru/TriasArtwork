require 'test_helper'

class MarriageControllerTest < ActionDispatch::IntegrationTest
  test "should get gallery" do
    get marriage_gallery_url
    assert_response :success
  end

  test "should get services" do
    get marriage_services_url
    assert_response :success
  end

end
