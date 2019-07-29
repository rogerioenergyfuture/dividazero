require 'test_helper'

class LoadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @load = loads(:one)
  end

  test "should get index" do
    get loads_url
    assert_response :success
  end

  test "should get new" do
    get new_load_url
    assert_response :success
  end

  test "should create load" do
    assert_difference('Load.count') do
      post loads_url, params: { load: { dateload: @load.dateload, daypay: @load.daypay, hold_id: @load.hold_id, quantparcel: @load.quantparcel } }
    end

    assert_redirected_to load_url(Load.last)
  end

  test "should show load" do
    get load_url(@load)
    assert_response :success
  end

  test "should get edit" do
    get edit_load_url(@load)
    assert_response :success
  end

  test "should update load" do
    patch load_url(@load), params: { load: { dateload: @load.dateload, daypay: @load.daypay, hold_id: @load.hold_id, quantparcel: @load.quantparcel } }
    assert_redirected_to load_url(@load)
  end

  test "should destroy load" do
    assert_difference('Load.count', -1) do
      delete load_url(@load)
    end

    assert_redirected_to loads_url
  end
end
