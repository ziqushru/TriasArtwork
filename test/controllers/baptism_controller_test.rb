require 'test_helper'

class BaptismControllerTest < ActionDispatch::IntegrationTest
  test "should get gallery" do
    get baptism_gallery_url
    assert_response :success
  end

  test "should get services" do
    get baptism_services_url
    assert_response :success
  end

end
