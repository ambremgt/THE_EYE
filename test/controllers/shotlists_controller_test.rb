require 'test_helper'

class ShotlistsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get shotlists_new_url
    assert_response :success
  end

  test "should get create" do
    get shotlists_create_url
    assert_response :success
  end

end
