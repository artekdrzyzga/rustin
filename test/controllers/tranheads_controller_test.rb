require 'test_helper'

class TranheadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tranhead = tranheads(:one)
  end

  test "should get index" do
    get tranheads_url
    assert_response :success
  end

  test "should get new" do
    get new_tranhead_url
    assert_response :success
  end

  test "should create tranhead" do
    assert_difference('Tranhead.count') do
      post tranheads_url, params: { tranhead: { status: @tranhead.status, user_id: @tranhead.user_id } }
    end

    assert_redirected_to tranhead_url(Tranhead.last)
  end

  test "should show tranhead" do
    get tranhead_url(@tranhead)
    assert_response :success
  end

  test "should get edit" do
    get edit_tranhead_url(@tranhead)
    assert_response :success
  end

  test "should update tranhead" do
    patch tranhead_url(@tranhead), params: { tranhead: { status: @tranhead.status, user_id: @tranhead.user_id } }
    assert_redirected_to tranhead_url(@tranhead)
  end

  test "should destroy tranhead" do
    assert_difference('Tranhead.count', -1) do
      delete tranhead_url(@tranhead)
    end

    assert_redirected_to tranheads_url
  end
end
