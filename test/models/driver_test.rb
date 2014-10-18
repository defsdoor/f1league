# == Schema Information
#
# Table name: drivers
#
#  id           :integer          not null, primary key
#  forename     :string(32)       default(""), not null
#  surname      :string(32)       default(""), not null
#  display_name :string(64)       default(""), not null
#  born_on      :date             default("1970/01/01"), not null
#  country_id   :integer
#
# Indexes
#
#  index_drivers_on_country_id  (country_id)
#

require 'test_helper'

class DriverTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "surname cant be blank" do
    driver = drivers(:lewis_hamilton)
    driver.surname = nil
    assert_not driver.save, "Driver saved with blank surname"
  end

  test "forename cant be blank" do
    driver = drivers(:lewis_hamilton)
    driver.forename = nil
    assert_not driver.save, "Driver saved with blank surname"
  end

  test "country cant be blank" do
    driver = drivers(:lewis_hamilton)
    driver.country = nil
    assert_not driver.save, "Driver saved with blank country"
  end

  test "display name is assigned" do
    driver = drivers(:lewis_hamilton)
    driver.display_name = nil
    driver.save
    assert_equal driver.forename + " " + driver.surname, driver.display_name, "display name was not assigned"
  end

  test "when changing name the display name changes" do
    driver = drivers(:lewis_hamilton)
    driver.forename = 'Damon'
    driver.save
    assert_equal driver.forename + " " + driver.surname, driver.display_name, "display name did not update"
  end

  test "when changing name the display name should not change" do
    driver = drivers(:lewis_hamilton)
    driver.display_name = "Sterling Moss"
    driver.save
    driver.forename = 'Damon'
    assert_not_equal driver.forename + " " + driver.surname, driver.display_name, "display name was overridden"
  end
end
