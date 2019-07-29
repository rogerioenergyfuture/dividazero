require 'test_helper'

class HoldsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hold = holds(:one)
  end

  test "should get index" do
    get holds_url
    assert_response :success
  end

  test "should get new" do
    get new_hold_url
    assert_response :success
  end

  test "should create hold" do
    assert_difference('Hold.count') do
      post holds_url, params: { hold: { code: @hold.code, company_id: @hold.company_id, dateparcel: @hold.dateparcel, email: @hold.email, mobile: @hold.mobile, name: @hold.name, predefaulting: @hold.predefaulting, quantparcel: @hold.quantparcel, status: @hold.status } }
    end

    assert_redirected_to hold_url(Hold.last)
  end

  test "should show hold" do
    get hold_url(@hold)
    assert_response :success
  end

  test "should get edit" do
    get edit_hold_url(@hold)
    assert_response :success
  end

  test "should update hold" do
    patch hold_url(@hold), params: { hold: { code: @hold.code, company_id: @hold.company_id, dateparcel: @hold.dateparcel, email: @hold.email, mobile: @hold.mobile, name: @hold.name, predefaulting: @hold.predefaulting, quantparcel: @hold.quantparcel, status: @hold.status } }
    assert_redirected_to hold_url(@hold)
  end

  test "should destroy hold" do
    assert_difference('Hold.count', -1) do
      delete hold_url(@hold)
    end

    assert_redirected_to holds_url
  end
end
