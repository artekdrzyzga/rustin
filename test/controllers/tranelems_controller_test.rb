require 'test_helper'

class TranelemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tranelem = tranelems(:one)
  end

  test "should get index" do
    get tranelems_url
    assert_response :success
  end

  test "should get new" do
    get new_tranelem_url
    assert_response :success
  end

  test "should create tranelem" do
    assert_difference('Tranelem.count') do
      post tranelems_url, params: { tranelem: { ad_id: @tranelem.ad_id, tranhead_id: @tranelem.tranhead_id } }
    end

    assert_redirected_to tranelem_url(Tranelem.last)
  end

  test "should show tranelem" do
    get tranelem_url(@tranelem)
    assert_response :success
  end

  test "should get edit" do
    get edit_tranelem_url(@tranelem)
    assert_response :success
  end

  test "should update tranelem" do
    patch tranelem_url(@tranelem), params: { tranelem: { ad_id: @tranelem.ad_id, tranhead_id: @tranelem.tranhead_id } }
    assert_redirected_to tranelem_url(@tranelem)
  end

  test "should destroy tranelem" do
    assert_difference('Tranelem.count', -1) do
      delete tranelem_url(@tranelem)
    end

    assert_redirected_to tranelems_url
  end
end
