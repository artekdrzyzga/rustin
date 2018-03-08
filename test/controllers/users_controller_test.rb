require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get list" do
    get users_list_url
    assert_response :success
  end

  test "should get new" do
    get users_new_url
    assert_response :success
  end

end
