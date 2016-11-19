require 'test_helper'

class InfoControllerTest < ActionDispatch::IntegrationTest
  test "should get contact_us" do
    get info_contact_us_url
    assert_response :success
  end

end
