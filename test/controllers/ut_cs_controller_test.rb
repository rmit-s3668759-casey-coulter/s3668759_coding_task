require 'test_helper'

class UtCsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @utc = utcs(:one)
  end

  test "should get index" do
    get utcs_url
    assert_response :success
  end

  test "should get new" do
    get new_utc_url
    assert_response :success
  end

  test "should create utc" do
    assert_difference('Utc.count') do
      post utcs_url, params: { utc: { city: @utc.city, country: @utc.country } }
    end

    assert_redirected_to utc_url(Utc.last)
  end

  test "should show utc" do
    get utc_url(@utc)
    assert_response :success
  end

  test "should get edit" do
    get edit_utc_url(@utc)
    assert_response :success
  end

  test "should update utc" do
    patch utc_url(@utc), params: { utc: { city: @utc.city, country: @utc.country } }
    assert_redirected_to utc_url(@utc)
  end

  test "should destroy utc" do
    assert_difference('Utc.count', -1) do
      delete utc_url(@utc)
    end

    assert_redirected_to utcs_url
  end
end
