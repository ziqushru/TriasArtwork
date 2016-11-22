require 'test_helper'

class ChristeningsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @christening = christenings(:one)
  end

  test "should get index" do
    get christenings_url
    assert_response :success
  end

  test "should get new" do
    get new_christening_url
    assert_response :success
  end

  test "should create christening" do
    assert_difference('Christening.count') do
      post christenings_url, params: { christening: { description: @christening.description, video_id: @christening.video_id } }
    end

    assert_redirected_to christening_url(Christening.last)
  end

  test "should show christening" do
    get christening_url(@christening)
    assert_response :success
  end

  test "should get edit" do
    get edit_christening_url(@christening)
    assert_response :success
  end

  test "should update christening" do
    patch christening_url(@christening), params: { christening: { description: @christening.description, video_id: @christening.video_id } }
    assert_redirected_to christening_url(@christening)
  end

  test "should destroy christening" do
    assert_difference('Christening.count', -1) do
      delete christening_url(@christening)
    end

    assert_redirected_to christenings_url
  end
end
