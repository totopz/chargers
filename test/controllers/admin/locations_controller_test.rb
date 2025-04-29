require "test_helper"

class Admin::LocationsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @user = users(:admin)
    sign_in @user

    @location = locations(:one)
  end

  test "should get index" do
    get admin_locations_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_location_url
    assert_response :success
  end

  test "should create location" do
    assert_difference("Location.count") do
      post admin_locations_url, params: { location: { latitude: @location.latitude, longitude: @location.longitude, title: @location.title } }
    end

    assert_redirected_to admin_location_url(Location.last)
  end

  test "should show admin_location" do
    get admin_location_url(@location)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_location_url(@location)
    assert_response :success
  end

  test "should update admin_location" do
    patch admin_location_url(@location), params: { location: { latitude: @location.latitude, longitude: @location.longitude, title: @location.title } }
    assert_redirected_to admin_location_url(@location)
  end

  test "should destroy admin_location" do
    assert_difference("Location.count", -1) do
      delete admin_location_url(@location)
    end

    assert_redirected_to admin_locations_url
  end
end
