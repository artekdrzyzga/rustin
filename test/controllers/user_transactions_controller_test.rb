require 'test_helper'

class UserTransactionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_transactions_index_url
    assert_response :success
  end

end
