require 'test_helper'

class ShotsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get shots_new_url
    assert_response :success
  end

  test "should get create" do
    get shots_create_url
    assert_response :success
  end

  test "should get destroy" do
    get shots_destroy_url
    assert_response :success
  end

end
