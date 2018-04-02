require 'test_helper'

class UserTransactionsElementsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_transactions_elements_index_url
    assert_response :success
  end

end
