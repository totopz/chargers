require "test_helper"

class LocationTest < ActiveSupport::TestCase
  def setup
    @location = Location.new(title: "Test Location", latitude: 40.7128, longitude: -74.0060)
  end

  test "is valid with valid attributes" do
    assert @location.valid?
  end

  test "is invalid without a title" do
    @location.title = nil
    assert_not @location.valid?
    assert_includes @location.errors[:title], "can't be blank"
  end

  test "is invalid without a latitude" do
    @location.latitude = nil
    assert_not @location.valid?
    assert_includes @location.errors[:latitude], "can't be blank"
  end

  test "has many chargers" do
    assert_respond_to @location, :chargers
  end
end
