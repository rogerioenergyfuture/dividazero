require 'test_helper'

class ResponsiblesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @responsible = responsibles(:one)
  end

  test "should get index" do
    get responsibles_url
    assert_response :success
  end

  test "should get new" do
    get new_responsible_url
    assert_response :success
  end

  test "should create responsible" do
    assert_difference('Responsible.count') do
      post responsibles_url, params: { responsible: { cel: @responsible.cel, cod: @responsible.cod, email: @responsible.email, name: @responsible.name, status: @responsible.status, tel: @responsible.tel } }
    end

    assert_redirected_to responsible_url(Responsible.last)
  end

  test "should show responsible" do
    get responsible_url(@responsible)
    assert_response :success
  end

  test "should get edit" do
    get edit_responsible_url(@responsible)
    assert_response :success
  end

  test "should update responsible" do
    patch responsible_url(@responsible), params: { responsible: { cel: @responsible.cel, cod: @responsible.cod, email: @responsible.email, name: @responsible.name, status: @responsible.status, tel: @responsible.tel } }
    assert_redirected_to responsible_url(@responsible)
  end

  test "should destroy responsible" do
    assert_difference('Responsible.count', -1) do
      delete responsible_url(@responsible)
    end

    assert_redirected_to responsibles_url
  end
end
